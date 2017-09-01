{
  meta:
    author: 'Ryan Gonzalez'
    description: ''
    license: 'License here'
    version: 'Version here'
  build: (buffer, dir) ->
    print dir
    assert 0
    -- aisu.spawn_in_buffer buffer,
      -- cmd: {'ln', '-s', "#{dir}/"}
}
