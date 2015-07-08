#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
configLib = require('../config').lib
browserSync  = require 'browser-sync'
gulpif       = require 'gulp-if'

gulp.task 'lib', ->
  gulp.src configLib.src
  .pipe gulp.dest configLib.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}