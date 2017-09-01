import theme from howl.ui

theme.register 'Miku', bundle_file 'theme.moon'

{
  info:
    author: 'Ryan Gonzalez'
    description: 'A Hatsune Miku/VOCALOID-oriented syntax theme'
    license: 'LICENSE'
  unload: -> theme.unregister 'Miku'
}
