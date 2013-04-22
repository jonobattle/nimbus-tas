class window.Helpers


  @domain: ->

    proto = document.location.protocol
    host = document.location.hostname
    port = document.location.port

    domain = ""
    if host
      domain = proto + "//" + host

    if port
      domain = domain + ":" + port

    return domain



  @root_url: ->

    return document.location.hostname



  # Record the keys pressed on the keyboard and match to specifc arrays
  @keystroke_catcher: (target, custom_callback) ->


    target_array = target.split ""
    letter_count = target.length
    last_n_keys = []

    $(document).on "keypress", (e) ->

      last_n_keys.push String.fromCharCode(e.which)

      if last_n_keys.length > letter_count
        last_n_keys = last_n_keys.reverse()
        last_n_keys.pop()
        last_n_keys = last_n_keys.reverse()


      if $(last_n_keys).not(target_array).length == 0 && $(target_array).not(last_n_keys).length == 0
        last_n_keys = []
        console.log "match"
        custom_callback()




  @form_input: (type, name, label_text, placeholder, value) ->

    control_group = document.createElement "div"
    $(control_group).addClass "control-group"

    control_input = document.createElement "input"
    $(control_input).attr "type", type
    $(control_input).attr "placeholder", placeholder
    $(control_input).attr "name", name
    $(control_input).val value if value

    controls = document.createElement "div"
    $(controls).addClass "controls"
    $(controls).append control_input

    control_label = document.createElement "label"
    $(control_label).addClass "control-label"
    $(control_label).attr "for", $(control_input).attr "name"
    $(control_label).html label_text

    $(control_group).append control_label
    $(control_group).append controls

    return control_group



  @form_button: (name, text, additional_css) ->

    control_group = document.createElement "div"
    $(control_group).addClass "control-group"

    control_button = document.createElement "button"
    $(control_button).addClass "btn " + additional_css
    $(control_button).attr "name", name
    $(control_button).html text

    controls = document.createElement "div"
    $(controls).addClass "controls"
    $(controls).append control_button

    $(control_group).append controls

    return control_group
