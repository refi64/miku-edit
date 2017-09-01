import delegate_to from howl.util.table

-- Colors based on:
-- http://www.colourlovers.com/palette/2060305/Hatsune_Mikus_hair
-- http://www.color-hex.com/color-palette/9535
-- http://vocaloidcolorpalette.tumblr.com/


background = '#00ddc0'
current = '#00346e'
foreground = '#ffffff'
comment = '#d8e500'
red = '#5e292c'
orange = comment
yellow = '#ead400'
green = '#6ed663'
aqua = '#35bdbd'
blue = '#1a2b87'
purple = '#e6b3cc'
keyword = red
border_color = background
selection = background

embedded_bg = '#03363a'


content_box =
  border:
    width: 1
    color: border_color
    alpha: 0.4

  border_right:
    width: 3
    color: border_color
    alpha: 0.4

  border_bottom:
    width: 3
    color: border_color
    alpha: 0.4

  header:
    background:
      color: border_color
      alpha: 0.4

    border_bottom:
      color: border_color
      alpha: 0.4

    color: border_color
    font: bold: true
    padding: 1

  footer:
    background:
      color: border_color
      alpha: 0.4

    border_top:
      color: border_color
      alpha: 0.4

    color: border_color
    font: bold: true
    padding: 1
    alpha: 0.4


{
  window:
    background:
      image:
        path: theme_file 'assets/bg.png'
      position: 'center'
    status:
      font: bold: true, italic: true
      color: blue

  editor: delegate_to content_box,
    scrollbars:
      slider:
        color: blue

    indicators:
      default:
        color: blue

      title:
        font: bold: true, italic: true

      vi:
        color: blue

    current_line:
      background: current

    gutter:
      color: border_color
      background:
        color: blue
        alpha: 0.4

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: aqua,
      :background,
      line_width: 1

    -- indentation_guide_1:
    --   type: flair.PIPE,
    --   foreground: blue,
    --   foreground_alpha: 0.5
    --   line_width: 1

    -- indentation_guide_2:
    --   type: flair.PIPE,
    --   foreground: green,
    --   foreground_alpha: 0.5
    --   line_width: 1

    -- indentation_guide_3:
    --   type: flair.PIPE,
    --   foreground: green,
    --   foreground_alpha: 0.3
    --   line_width: 1

    edge_line:
      type: flair.PIPE,
      foreground: blue,
      foreground_alpha: 0.3,
      line_width: 0.5

    search:
      type: highlight.ROUNDED_RECTANGLE
      foreground: black
      foreground_alpha: 1
      background: green
      text_color: darkgreen
      height: 'text'

    search_secondary:
      type: flair.ROUNDED_RECTANGLE
      background: lightblue
      text_color: black
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: black
      background: red
      text_color: black
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: foreground
      background: '#0064b1'
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      foreground: '#0064b1'
      text_color: foreground
      line_width: 1
      height: 'text'

    list_selection:
      type: flair.RECTANGLE
      background: selection
      background_alpha: 0.4

    list_highlight:
      type: highlight.UNDERLINE
      foreground: white
      text_color: white
      line_width: 2

    cursor:
      type: flair.RECTANGLE
      background: foreground
      width: 2
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: foreground
      text_color: background
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: selection
      background_alpha: 0.6
      min_width: 'letter'

  styles:

    default:
      color: foreground

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup:
      background: '#00346e'
      color: foreground

    comment:
      font: italic: true
      color: comment

    variable: color: yellow

    label:
      color: orange
      font: italic: true

    key:
      color: blue
      font: bold: true

    fdecl:
      color: blue
      font: bold: true

    keyword:
      color: keyword
      font: bold: true

    class:
      color: yellow
      font: bold: true

    type_def:
      color: yellow
      font:
        bold: true
        size: 'large'
        family: 'Purisa,Latin Modern Sans'

    definition: color: yellow

    function:
      color: blue
      font: bold: true

    char: color: green
    number: color: orange
    operator: color: aqua
    preproc: color: aqua
    special: color: purple
    tag: color: purple
    type: color: yellow
    member: color: red
    info: color: blue

    constant:
      color: yellow

    string: color: green

    regex:
      color: green
      background: embedded_bg
      background_alpha: 0.5

    embedded:
      color: '#aadaff'
      background: embedded_bg
      background_alpha: 0.5

    error:
      font: italic: true
      color: white
      background: darkred

    warning:
      font: italic: true
      color: orange

    h1:
      color: white
      background: '#005491'

    h2:
      color: green
      font: bold: true

    h3:
      color: purple
      background: current
      font: italic: true

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: aqua
    link_url: color: comment

    table:
      color: blue
      background: embedded_bg
      background_alpha: 0.5
      underline: true

    addition: color: green
    deletion: color: red
    change: color: yellow
}
