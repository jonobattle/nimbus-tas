
class window.Nimbus

  login_controls = null
  admin_controls = null

  login_shroud_id = "nimbus-login-shroud"
  login_shroud_class = "nimbus-login-shroud"

  login_controls_id = "nimbus-login-controls"
  login_controls_class = "nimbus-login-controls"


  #  Hide the login interface
  hide_login: ->

    $(login_controls).removeClass "animated flipInX"
    $(login_controls).fadeOut "normal", ->

      $("#" + login_shroud_id).fadeOut "normal", ->
        login_controls = null
        $(this).remove()



  #  Show the login interface
  show_login: ->

    if !login_controls and !window.session.is_signed_in()

      # Create a shroud to cover everything
      login_shroud = document.createElement "div"
      $(login_shroud).attr "id", login_shroud_id
      $(login_shroud).addClass login_shroud_class

      # Set the size of the shroud
      $(login_shroud).css { height: $(window).height(), width: $(window).width() }
      $(login_shroud).hide()

      $("body").append login_shroud
      $(login_shroud).fadeIn "normal", ->

        # Create the element to hold the login controls

        login_controls = document.createElement "div"
        $(login_controls).attr "id", login_controls_id
        $(login_controls).addClass login_controls_class
        $(login_controls).addClass "animated flipInX"

        # Create the branding
        nimbus_logo = document.createElement "div"
        $(nimbus_logo).addClass "brand"
        $(nimbus_logo).html "Nimbus"
        $(login_controls).append nimbus_logo

        # Create the close controls
        close_button = document.createElement "a"
        $(close_button).addClass "close_login_controls"
        $(close_button).html "x"
        $(login_controls).append close_button

        login_form = document.createElement "form"
        $(login_form).addClass "form form-horizontal"
        $(login_controls).append login_form

        email_input = Helpers.form_input("text", "email", "Email", "Your email address")
        $(login_form).append email_input

        password_input = Helpers.form_input("password", "password", "Password", "Your password")
        $(login_form).append password_input

        sign_in_button = Helpers.form_button("sign_in", "Sign In", "btn-default")
        $(login_form).append sign_in_button

        $(login_controls).hide()
        $("body").append login_controls


        # Position the controls
        $(login_controls).css { left: ($(window).width() / 2) - ($(login_controls).width() / 2), top: ($(window).height() / 2) - ($(login_controls).height() / 2) - 50 }
        $(login_controls).fadeIn "fast"


        # Init the submit button interaction
        $(sign_in_button).on "click", (e) ->

          email = $(this).closest("form").find("[name='email']").val()
          password = $(this).closest("form").find("[name='password']").val()

          try
            window.session.attempt_sign_in email, password
          catch e
            alert "Error while attemping sign in: " + e

          e.preventDefault()
          return false


        # Init the close interaction
        $(close_button).off "click"
        $(close_button).on "click", ->
          window.nimbus.hide_login()

    else

      $(login_controls).removeClass "wiggle animated flipInX"
      $(login_controls).addClass "animated wiggle"









  # Refresh the appearance based on things like logged in status
  refresh: ->


    if login_controls
      @hide_login()


    if window.session.is_signed_in()

      if !admin_controls
        admin_controls = document.createElement "div"
        $(admin_controls).addClass "nimbus-admin-controls clearfix"
        $(admin_controls).css { marginTop: -50 }
        $("body").prepend admin_controls

        # Create the sign out button
        sign_out_button = Helpers.form_button("sign_out", "Sign Out", "btn-inverse pull-right")
        $(admin_controls).append sign_out_button

        # Create sign out controls
        $(sign_out_button).off "click"
        $(sign_out_button).on "click", ->
          window.session.attempt_sign_out()

      if $(admin_controls).offset().top < 0
        $(admin_controls).animate { marginTop: 0 }

    else

      if admin_controls
        $(admin_controls).animate { marginTop: -50 }, ->
          $(admin_controls).remove()
          admin_controls = null


