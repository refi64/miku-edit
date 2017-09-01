import theme from howl.ui

theme.register 'Miku', bundle_file 'theme.moon'

{
  info: bundle_load'aisu'.meta
  unload: -> theme.unregister 'Miku'
}
