import theme from howl.ui

theme.register 'Miku', bundle_file 'theme-light.moon'
theme.register 'Miku Dark', bundle_file 'theme-dark.moon'

{
  info: bundle_load'aisu'.meta
  unload: ->
    theme.unregister 'Miku'
    theme.unregister 'Miku Dark'
}
