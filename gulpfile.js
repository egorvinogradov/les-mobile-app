var gulp = require('gulp');
var gutil = require('gulp-util');
var bower = require('bower');
var concat = require('gulp-concat');
var sass = require('gulp-sass');
var minifyCss = require('gulp-minify-css');
var rename = require('gulp-rename');
var sh = require('shelljs');
var coffee = require('gulp-coffee');

var paths = {
  sass: ['./www/**/*.sass'],
  coffee: ['./www/**/*.coffee']
};

gulp.task('default', ['sass']);
gulp.task('default', ['coffee']);

gulp.task('sass', function(done) {
  gulp.src('./www/sass/app.sass')
    .pipe(sass({ indentedSyntax: true, errLogToConsole: true }))
    .pipe(gulp.dest('./www/compiled/css/'))
    .pipe(minifyCss({
      keepSpecialComments: 0
    }))
    .pipe(rename({ basename: 'app', extname: '.css' }))
    .pipe(gulp.dest('./www/compiled/css'))
    .on('end', done);
});

gulp.task('coffee', function(done) {
  gulp.src(paths.coffee)
  .pipe(coffee({bare: true}).on('error', function(error){
      var stack = error.stack;
      delete error.code;
      delete error.stack;
      console.log('\n> Error:\n\n' + JSON.stringify(error, 0, 4) + '\n\n' + stack);
    }))
  .pipe(concat('app.js'))
  .pipe(gulp.dest('./www/compiled/js'))
  .on('end', done)
});

gulp.task('watch', function() {
  gulp.watch(paths.sass, ['sass']);
  gulp.watch(paths.coffee, ['coffee']);
});

gulp.task('install', ['git-check'], function() {
  return bower.commands.install()
    .on('log', function(data) {
      gutil.log('bower', gutil.colors.cyan(data.id), data.message);
    });
});

gulp.task('git-check', function(done) {
  if (!sh.which('git')) {
    console.log(
      '  ' + gutil.colors.red('Git is not installed.'),
      '\n  Git, the version control system, is required to download Ionic.',
      '\n  Download git here:', gutil.colors.cyan('http://git-scm.com/downloads') + '.',
      '\n  Once git is installed, run \'' + gutil.colors.cyan('gulp install') + '\' again.'
    );
    process.exit(1);
  }
  done();
});
