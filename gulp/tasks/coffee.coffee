#
# Created by bug on 15/7/8.
#
gulp         = require 'gulp'
coffee       = require 'gulp-coffee'
plumber      = require 'gulp-plumber'
changed      = require 'gulp-changed'
gutil        = require 'gulp-util'
sourcemaps   = require 'gulp-sourcemaps'
gulpif       = require 'gulp-if'
uglify       = require 'gulp-uglify'
handleErrors = require '../utils/handleErrors'
configCoffee = require('../config').coffee
browserSync  = require 'browser-sync'

gulp.task 'coffee', ->
  gulp.src configCoffee.src
  .pipe plumber errorHandler: handleErrors
  .pipe gulpif global.isDebug, changed configCoffee.dest,
    extension: 'js'
  .pipe coffee(coffee({bare: true}).on('error', gutil.log))
  .pipe gulpif !global.isDebug, uglify()
  .pipe plumber.stop()
  .pipe gulp.dest configCoffee.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}