class window.MessageQueue

  message_queue_id = "message_queue"
  messages = []


  constructor: ->

    message_queue = document.createElement "div"
    $(message_queue).addClass "message_queue"
    $(message_queue).attr "id", message_queue_id
    $("body").append message_queue



  refresh_messages: ->

    # Refresh the display of the current message queue
    $("#" + message_queue_id).html ""

    for message in messages
      $("#" + message_queue_id).append message.draw()



  draw_message: (message) ->

    new_message = message.draw()

    remove_message = ->
      $(new_message).animate { height: 0 }, ->
        $(new_message).remove()

    hide_message = ->
      $(new_message).removeClass "bounceInRight"
      $(new_message).addClass "fadeOutUp"
      setTimeout remove_message, 1000


    $("#" + message_queue_id).append new_message
    setTimeout hide_message, 4000


  add_message_to_queue: (message) ->

    messages.push message
    window.message_queue.draw_message message


