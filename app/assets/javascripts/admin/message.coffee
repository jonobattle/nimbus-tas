class window.Message

  @type = ""
  @title = ""
  @message = ""


  constructor: (type, title, message) ->

    @type = type
    @title = title
    @message = message


  draw: ->

    message_element = document.createElement "div"
    $(message_element).addClass "animated bounceInRight message " + @type
    $(message_element).html @message
    return message_element



