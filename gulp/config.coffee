#
# Created by bug on 15/7/7.
#

module.exports =
  serverPort: 7000

  sass:
    src: 'app/sass/*.scss'
    dest: "build/#{global.env}/css"

  coffee:
    src: 'app/coffee/*.coffee'
    dest: "build/#{global.env}/js"

  lib:
    src: 'app/lib/*.js'
    dest: "build/#{global.env}/js"

  root: "build/#{global.env}"

  images:
    src: 'app/images/**'
    dest: "build/#{global.env}/images"

  html:
    src: 'app/**/*.html'
    dest: "build/#{global.env}"
