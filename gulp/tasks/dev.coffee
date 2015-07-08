#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
runSequence = require 'run-sequence'


gulp.task 'dev', ['clean'], (cb)->
  cb = cb || ()->

  global.isDebug = true

  runSequence 'sass', 'images', 'html', 'coffee', 'lib', 'watch', 'browserSync', cb


