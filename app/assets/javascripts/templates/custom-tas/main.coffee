# Default JS for the Goodline template

carousel_timer = null

carousel_counter = 0
carousel_loop_count = 100
all_carousel_items = null
current_carousel_item = null


create_carousel = ->
  all_carousel_items = $(".homepage-fader-inner").find(".item")
  all_carousel_items.hide()
  current_carousel_item = all_carousel_items.first()
  current_carousel_item.fadeIn 1000, ->
    current_carousel_item.css 'z-index', ++carousel_loop_count


get_next_carousel_item = (element) ->

  previous_carousel_item = current_carousel_item
  current_carousel_item = all_carousel_items.eq(element)

  current_carousel_item.css 'z-index', ++carousel_loop_count

  current_carousel_item.fadeIn 1000, ->
    previous_carousel_item.hide()





create_and_run_carousel = ->

  create_carousel()

  run_carousel = ->
    get_next_carousel_item (carousel_counter = ++carousel_counter % all_carousel_items.length)

  carousel_timer = setInterval run_carousel, 6000



resize_banner_image = ->

  if $(window).width() > 1200
    $(".homepage-fader").find("img").width $(window).width()
  else
    $(".homepage-fader").find("img").width 1200



create_inline_lists = ->

  $(".main").find("p").each ->

    paragraph = $(this)

    if paragraph.html().indexOf "|" >= 0

      sections = paragraph.html().split "|"

      if sections.length > 1
        paragraph.html "<div class='inline-list clearfix'></div></div>"
        for section in sections
          clean_section = section.trim()
          clean_section = clean_section.replace " ", "&nbsp;"
          paragraph.find(".inline-list").append "<span class='inline-list-item'>" + clean_section + "</span>"

      # Add the interactions
      $(".inline-list-item").off "mouseenter"
      $(".inline-list-item").on "mouseenter", (e) ->
        $(e.currentTarget).addClass "hover"

      $(".inline-list-item").off "mouseleave"
      $(".inline-list-item").on "mouseleave", (e) ->
        $(e.currentTarget).removeClass "hover"



create_item_sorter = ->

  items_per_row = 3
  item_width   = $(".relative > .absolute").first().width() + 20
  item_height  = $(".relative > .absolute").first().height() + 20

  items = $(".relative > .absolute")

  current_left = 0
  current_top = 0
  item_count = 0
  row_count = 0

  for item in items 

    item_count = item_count + 1
    row_count = row_count + 1

    if row_count > items_per_row
      current_left = 0
      row_count = 0

    if item_count > items_per_row
      control_item = items[item_count - items_per_row]
      current_top = $(control_item).position().top + $(control_item).height() + 50

    $(item).css { left: current_left, top: current_top }
    current_left = current_left + $(item).width() + 20





show_active_links = ->

  parameters = window.location.pathname.split("/")

  for parameter in parameters
    $('a[href$="' + parameter + '"]').addClass "active"






jQuery ->

  # Kick off the homepage fader
  create_and_run_carousel()


  # Set up the category sorter on the projects page
  # $(window).load ->
  #   create_item_sorter()


  # Make sure image sizes on the homepage are right in browsers that don't support 100% width like Chrome does.
  $(window).resize ->
    resize_banner_image()


  # Add an active class to any links that match the window url
  show_active_links()

