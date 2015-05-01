gulp = require 'gulp'
filter = require 'gulp-filter'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'

parameters = require '../parameters.coffee'

gulp.task 'assets', ->
  gulp.src "#{parameters.paths.src.assets}/**"
  .pipe plumber()
  .pipe gulp.dest parameters.paths.www.main

  gulp.src "#{parameters.paths.src.styles}/**"
  .pipe concat parameters.files.vendors.styles
  .pipe plumber()
  .pipe gulp.dest parameters.paths.www.styles
