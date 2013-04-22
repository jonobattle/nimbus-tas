class window.Session

  is_signed_in = false
  authorizaton_token = null



  set_header: ->
    $(document).ajaxSend (e, xhr, options) ->
      xhr.setRequestHeader "Authorization", $.cookie "nimbus"



  is_signed_in: ->
    return is_signed_in



  attempt_ping: ->

    # Only both pinging the server if we have a cookie to work with
    if $.cookie "nimbus"

      @set_header()
      $.ajax
        url: Helpers.domain() + "/api/attempt_ping"
        dataType: "json"
        type: "GET"

        success: (json) ->

          if json and json.attempt.flash

            if json.attempt.flash[0].type == "success"

              # We are logged in!
              is_signed_in = true
              window.nimbus.refresh()






  attempt_sign_in: (email, password) ->

    email = "jono.battle@gmail.com"
    password = "123123123"

    if email and password

      $.ajax
        url: Helpers.domain() + "/api/attempt"
        dataType: "json"
        type: "GET"
        data:
          email: email
          password: password

        success: (json) ->

          if json and json.attempt

            # Check for a flash message and pass to the flash class if found
            if json.attempt.flash

              for message in json.attempt.flash

                new_message = new Message message.type, message.title, message.message
                window.message_queue.add_message_to_queue new_message


            # Check for data, if there is data then the attempt was a success
            if json.attempt.data

              if json.attempt.data[0]
                authorizaton_token = json.attempt.data[0].value

                is_signed_in = true

                # Set the cookie
                $.cookie "nimbus", authorizaton_token

                window.nimbus.refresh()



  attempt_sign_out: ->

    window.session.set_header()
    $.ajax
      url: Helpers.domain() + "/api/attempt_sign_out"
      dataType: "json"
      type: "GET"

      success: (json) ->

        is_signed_in = false
        $.removeCookie "nimbus"
        window.nimbus.refresh()



  constructor: ->

    @attempt_ping()