var gulp  = require('gulp')
var shell = require('gulp-shell')
var run = require('gulp-run');


gulp.task('dev', function(){
  run('webpack --watch')
  run('live-server build')
})
