// -----[ Modules ]-------------------------------------------------------------
var fs = require('fs');
var os = require('os');

var gulp = require('gulp');
var clean = require('gulp-clean');
var merge = require('merge-stream');
var connect = require('gulp-connect');
var sequence = require('run-sequence');

var concat = require('gulp-concat');
var rename = require('gulp-rename');
var replace = require('gulp-replace');
var ngConstant = require('gulp-ng-constant');

var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');
var cssmin = require('gulp-cssmin');
var nocomments = require('gulp-strip-css-comments');

var jshint = require('gulp-jshint');
var uglify = require('gulp-uglify');

// -----[ Files ]---------------------------------------------------------------
var js = [
  // Angular
  'node_modules/angular/angular.js',
  'node_modules/angular-animate/angular-animate.js',
  'node_modules/angular-ui-router/release/angular-ui-router.js',
  'node_modules/angular-resource/angular-resource.js',
  'bower_components/angularjs-datetime-picker/angularjs-datetime-picker.js'
];

var css = [
  'bower_components/angularjs-datetime-picker/angularjs-datetime-picker.css'
];

// -----[ IP Address ]----------------------------------------------------------
var ifaces = os.networkInterfaces();
var ipAddress = undefined;

Object.keys(ifaces).forEach(function (ifname) {
  var alias = 0;
  ifaces[ifname].forEach(function (iface) {
    if ('IPv4' !== iface.family || iface.internal !== false) {
      return;
    }
    if (alias < 1) {
      if (ifname.startsWith('en')) {
        if (iface.address.startsWith('192.168.')) {
          ipAddress = iface.address;
        }
      }
    }
    ++alias;
  });
});

// -----[ JSON Files ]----------------------------------------------------------
var pkg = JSON.parse(fs.readFileSync('./package.json', 'utf8'));

// -----[ Constants ]-----------------------------------------------------------
var constDebug = {
  version: 'v' + pkg.version,
  showVersion: true,
  baseUrl: 'http://localhost:9019',
  apiServer: 'http://' + (ipAddress || '127.0.0.1') + ':8081'
};

var constDev = {
  version: 'v' + pkg.version,
  showVersion: true,
  baseUrl: /* TODO: baseUrl -> */'',
  apiServer: /* TODO: baseUrl -> */''
};

// -----[ Tasks ]---------------------------------------------------------------

// -----[ Connect Task ]------------
gulp.task('connect', function () {
  return connect.server({
    port: 9019,
    root: 'dist',
    livereload: true
  });
});

// -----[ HTML Task ]----------------
gulp.task('html', function () {
  return gulp.src(['src/**/*.html', '!src/index.html'])
      .pipe(gulp.dest('dist/'))
      .pipe(connect.reload());
});

// -----[ Scripts Tasks ]-------------
gulp.task('scripts', function () {
  var downloadStream = gulp.src(js);

  var customStream = gulp.src(['src/**/*.js'])
      .pipe(jshint())
      .pipe(jshint.reporter('jshint-stylish'));

  return merge(downloadStream, customStream)
      .pipe(sourcemaps.init())
      .pipe(concat('scripts.js'))
      .pipe(sourcemaps.write())
      .pipe(gulp.dest('dist/assets/'))
      .pipe(connect.reload());
});

gulp.task('scripts:uglify', function () {
  var downloadStream = gulp.src(js)
      .pipe(concat('scripts-A.js'));

  var customStream = gulp.src(['src/**/*.js'])
      .pipe(concat('scripts-B.js'));

  return merge(downloadStream, customStream)
      .pipe(concat('scripts.min.js'))
      .pipe(uglify({
        mangle: false
      }))
      .pipe(gulp.dest('dist/assets/'));
});

// -----[ Style Tasks ]---------------
gulp.task('style', function () {
  var sassStream = gulp.src(['src/**/*.sass', '!src/**/_*.sass'])
      .pipe(sourcemaps.init())
      .pipe(sourcemaps.write())
      .pipe(sass());

  var cssStream = gulp.src(css);

  merge(cssStream, sassStream)
      .pipe(concat('style.css'))
      .pipe(gulp.dest('dist/assets/'))
      .pipe(connect.reload());
});

gulp.task('style:min', function () {
  gulp.src(['src/**/*.sass', '!src/**/_*.sass'])
      .pipe(concat('style.sass'))
      .pipe(sass())
      .pipe(nocomments({preserve: false}))
      .pipe(concat('style.min.css'))
      .pipe(cssmin())
      .pipe(gulp.dest('dist/assets/'));
});

// -----[ Watch Task ]---------------
gulp.task('watch', function () {
  gulp.watch(['src/**/*.html'], ['index', 'html']);
  gulp.watch(['src/**/*.js'], ['scripts']);
  gulp.watch(['src/**/*.sass'], ['style']);
});

// -----[ Copy Tasks ]----------------
gulp.task('copy:assets', function () {
  return gulp.src(['src/assets*/**/*', '!src/assets/styles*/**/*', '!src/assets/scripts*/**/*'])
      .pipe(gulp.dest('dist/assets/'));
});

// -----[ Index Task ]------------------
gulp.task('index', function () {
  return gulp.src('src/index.html')
      .pipe(replace(/style(\.min)?\.css(\?version=[0-9A-z.]+)?/, 'style.css?version=' + pkg.version))
      .pipe(replace(/scripts(\.min)?\.js(\?version=[0-9A-z.]+)?/, 'scripts.js?version=' + pkg.version))
      .pipe(gulp.dest('dist/'));
});


gulp.task('index:min', function () {
  return gulp.src('src/index.html')
      .pipe(replace(/style(\.min)?\.css(\?version=[0-9A-z.]+)?/, 'style.min.css?version=' + pkg.version))
      .pipe(replace(/scripts(\.min)?\.js(\?version=[0-9A-z.]+)?/, 'scripts.min.js?version=' + pkg.version))
      .pipe(gulp.dest('dist/'));
});

// -----[ Clean Tasks ]------------------
gulp.task('clean', function () {
  return gulp.src([
    '.sass-cache',
    '**/.DS_Store',
    'dist/',
    'src/component/constants/'
  ], {read: false})
      .pipe(clean({force: true}));
});

// -----[ Constants Tasks ]--------------
gulp.task('constants:dev', function () {
  return constants(constDev);
});
gulp.task('constants:debug', function () {
  return constants(constDebug);
});


// -----[ Functional Tasks ]----------------------------------------------------
function constants(config) {
  return gulp.src('constants-config.json')
      .pipe(ngConstant({
        dest: 'conStore.js',
        name: 'config',
        noFile: true,
        constants: {
          ConStore: config
        },
        wrap: '(function() {\n\'use strict\';\n\n<%= __ngModule %>})();'
      }))
      .pipe(gulp.dest('src/component/constants/'));
}

// -----[ User Tasks ]----------------------------------------------------------
gulp.task('dev', function (callback) {
  sequence(
      'clean',
      'constants:dev',
      ['index:min', 'html', 'scripts:uglify', 'style:min', 'copy:assets'],
      callback
  );
});

gulp.task('debug', function (callback) {
  sequence(
      'clean',
      'constants:debug',
      ['index', 'html', 'scripts', 'style', 'copy:assets'],
      ['connect', 'watch'],
      callback
  );
});

gulp.task('default', ['debug']);
