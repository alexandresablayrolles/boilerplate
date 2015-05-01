gulp = require 'gulp'
imagemin = require 'gulp-imagemin'
jpegtran = require 'imagemin-jpegtran'
filter = require 'gulp-filter'
plumber = require 'gulp-plumber'

parameters = require '../parameters.coffee'

gulp.task 'images', ->
  gulp.src "#{parameters.paths.src.images}/**"
  .pipe plumber()
  .pipe imagemin
    use: [jpegtran()]
    progressive: true
  .pipe gulp.dest parameters.paths.www.images
