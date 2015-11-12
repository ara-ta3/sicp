var gulp = require('gulp');
var exec = require('gulp-exec');

gulp.task('test2nd', function(){
    var options = {
        continueOnError: true
    };

    gulp.src('')
    .pipe(exec('make -C 2nd test-all', options))
    .pipe(exec.reporter());
});

gulp.task('default', ['test2nd']);
gulp.task('watch', function() {
    gulp.watch('./2nd/**/*.scm',  {debounceDelay: 2000}, ['test2nd'])
});

