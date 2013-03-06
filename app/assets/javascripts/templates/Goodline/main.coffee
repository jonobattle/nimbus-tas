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



create_projects_sorter = ->

  projects_per_row = 3
  project_width   = $(".goodline-projects-project").first().width() + 20
  project_height  = $(".goodline-projects-project").first().height() + 20


  # Set the first category option as the active option
  $(".categories").find(".category").first().addClass "active"
  current_category = $(".categories").find(".active").html()


  # Hide all the projects so we can fade them in nicely, this only happens after load
  $(".goodline-projects-project").hide()


  sort_visible_projects = (category) ->

    current_left    = 0
    current_top     = 0
    project_count   = 1

    # Set the height of the projects container
    $(".goodline-projects").css { height: ($(".goodline-projects-project").length / projects_per_row) * project_height + 150 }

    # Grab all the projects and set their current position

    visible_projects = $(".goodline-projects-project").find('.type:contains("' + category + '")')
    visible_projects = $(".goodline-projects-project").find('.type') if category == "All"

    visible_projects.each ->
      $(this).parent(".goodline-projects-project").addClass "current-category"
      $(this).fadeIn "fast"

    # Hide projects without the right class
    $(".goodline-projects-project").not('.current-category').each ->
      $(this).fadeOut "fast"


    visible_projects.each ->

      project = $(this).parent(".goodline-projects-project")

      project.animate { left: current_left, top: current_top }

      # Set the new left and top values
      current_left += project_width

      if project_count % projects_per_row == 0
        current_left = 0
        current_top += project_height

      project.fadeIn "fast"

      project_count = ++project_count




  sort_visible_projects(current_category)

  # Set up the interactions so we can sort the projects
  $(".categories").find(".category").off "click"
  $(".categories").find(".category").on "click", (e) ->

    # Remove the active class from other categories
    $(".categories").find(".category").removeClass "active"
    $(this).addClass "active"

    # Remove the current category class
    $(".goodline-projects-project").removeClass "current-category"
    sort_visible_projects($(e.currentTarget).html())




show_active_links = ->

  parameters = window.location.pathname.split("/")

  for parameter in parameters
    $('a[href$="' + parameter + '"]').addClass "active"



show_random_page_banner = ->

  random = Math.round(Math.random() * ($(".page-banner").find("img").length - 1))
  console.log random
  $(".page-banner").find("img").hide()
  $(".page-banner").find("img").eq(random).show()



create_infocus_scroller = ->

  projects = $(".homepage-infocus").find(".row")
  projects.first().show()


  # Create interactions for the arrows
  projects.find(".arrow-left, .arrow-right").off "mouseenter"
  projects.find(".arrow-left, .arrow-right").on "mouseenter", ->
    $(this).addClass "hover"

  projects.find(".arrow-left, .arrow-right").off "mouseleave"
  projects.find(".arrow-left, .arrow-right").on "mouseleave", ->
    $(this).removeClass "hover"



  projects.find(".arrow-right").off "click"
  projects.find(".arrow-right").on "click", (e) ->
    $(this).closest(".row").fadeOut "fast", ->

      next_project_length = $(this).closest(".row").next().length
      if next_project_length > 0
        next_project = $(this).closest(".row").next()
      else
        next_project = projects.first()

      next_project.fadeIn "fast"


  projects.find(".arrow-left").off "click"
  projects.find(".arrow-left").on "click", (e) ->
    $(this).closest(".row").fadeOut "fast", ->

      prev_project_length = $(this).closest(".row").prev().length
      if prev_project_length > 0
        prev_project = $(this).closest(".row").prev()
      else
        prev_project = projects.last()

      prev_project.fadeIn "fast"




jQuery ->


  # Kick off the homepage fader
  create_and_run_carousel()

  # Set up in focus projects on homepage
  create_infocus_scroller()

  # Add some styling to 'pipe' separated lists
  create_inline_lists()


  # Set up the category sorter on the projects page
  create_projects_sorter()


  # Make sure image sizes on the homepage are right in browsers that don't support 100% width like Chrome does.
  $(window).resize ->
    resize_banner_image()


  # Add an active class to any links that match the window url
  show_active_links()

  show_random_page_banner()
