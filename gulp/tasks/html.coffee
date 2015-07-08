#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
configHtml = require('../config').html
browserSync  = require 'browser-sync'
gulpif       = require 'gulp-if'

gulp.task 'html', ->
  gulp.src configHtml.src
  .pipe gulp.dest configHtml.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}