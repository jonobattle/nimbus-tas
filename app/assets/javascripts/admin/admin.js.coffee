
## This file needs to be included within the template application.js file to give the site access to the admin functionality

jQuery ->

  window.nimbus = new Nimbus
  window.session = new Session
  window.message_queue = new MessageQueue

  Helpers.keystroke_catcher "admin", window.nimbus.show_login

















### draw the page components
#
#
#draw_page = ->
#
#  # Position the main background
#  $(".main-admin-panel").css { height: $(window).height() }
#
#
#  # Position the nimbus cloud
#  new_left  = ($(window).width() / 2) - ( $(".nimbus-cloud").width() / 2 )
#  $(".nimbus-cloud").css { top: 80, left: new_left }
#
#
#  # # Position the page controls
#  # new_top   = ($(window).height() / 2) - ( $(".main-page-controls").height() / 2 )
#  # new_left  = ($(window).width() / 2) - ( $(".main-page-controls").width() / 2 )
#  # $(".main-page-controls").css { top: new_top, left: new_left }
#
#
#
#
#show_loading = ->
#
#  loading = document.createElement "div"
#  $(loading).attr "id", "loading"
#  $(loading).addClass "loading animated flipInX"
#  $(loading).html "Loading"
#
#
#  $(".main-admin-panel").append loading
#
#  new_top   = ($(window).height() / 2) - ( $(loading).height() / 2 )
#  new_left  = ($(window).width() / 2) - ( $(loading).width() / 2 )
#  $(loading).css { top: new_top, left: new_left }
#
#
#
#
#
#
#hide_loading = ->
#
#  $("#loading").remove()
#
#
#
#
#draw_strings = ->
#
#  stateMachineConnector =
#    connector: "Flowchart"
#    paintStyle:
#      lineWidth: 2
#      strokeStyle: "#ccc"
#      dashstyle: "4 2"
#
#    hoverPaintStyle:
#      strokeStyle: "#dbe300"
#
#    endpoint: "Blank"
#    anchor: "Continuous"
#
#
#  jsPlumb.connect
#    source: "nimbus-cloud"
#    target: "main-page-controls"
#  , stateMachineConnector
#
#
#
#
#create_interactions = ->
#
#  # Set up the admin page interactions
#
#  $(".hoverable").off "mouseenter"
#  $(".hoverable").on "mouseenter", ->
#    $(this).addClass "hover"
#
#  $(".hoverable").off "mouseleave"
#  $(".hoverable").on "mouseleave", ->
#    $(this).removeClass "hover"
#
#
#
#
#jQuery ->
#
#  # Enable
#
#
#  draw_page()
##
#  show_loading()
##
##  create_interactions()
##
##  jsPlumb.bind "ready", ->
##    draw_strings()

  



