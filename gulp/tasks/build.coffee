gulp          = require 'gulp'
gulpSequence  = require 'gulp-sequence'

gulp.task 'build', (cb) ->
  tasks = [
    'clean'
    [ 'iconFont', 'images' ]
    [ 'react', 'sass', 'browserify' ]
  ]

  if process.env.RAILS_ENV == 'production'
    tasks.push 'rev'

  tasks.push cb
  gulpSequence.apply this, tasks
