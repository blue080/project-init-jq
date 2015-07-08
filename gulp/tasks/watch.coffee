#
# Created by bug on 15/7/8.
#
config = require '../config'
gulp = require 'gulp'

gulp.task 'watch', ['server'], ->
  gulp.watch config.sass.src, ['sass']
  gulp.watch config.images.src, ['images', 'reload']
  gulp.watch config.html.src, ['html']
  gulp.watch config.lib.src, ['lib']
  gulp.watch config.coffee.src, ['coffee']