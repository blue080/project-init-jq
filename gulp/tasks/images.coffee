#
# Created by bug on 15/7/8.
#
changed  = require 'gulp-changed'
gulp     = require 'gulp'
gulpif   = require 'gulp-if'
imagemin = require 'gulp-imagemin'


configImages = require('../config').images


gulp.task 'images', ->
  gulp.src configImages.src
  .pipe changed configImages.dest
  .pipe gulpif !global.isDebug, imagemin()
  .pipe gulp.dest configImages.dest