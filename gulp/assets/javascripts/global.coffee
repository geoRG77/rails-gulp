message = require './message'

console.log message


window.App = {}

$('[data-load]').each ->
  path      = $(this).data('load')
  component = $(this).data('module')

  App[component] = require path

