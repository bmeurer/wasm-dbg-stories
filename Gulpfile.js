const {dest, parallel, series, src, watch} = require('gulp');
const connect = require('gulp-connect');
const del = require('delete');
const sourcemaps = require('gulp-sourcemaps');
const ts = require('gulp-typescript');
const wat2wasm = require('gulp-wat2wasm');

const DISTDIR = './dist';
const SRCDIR = './src';

const buildAssets = () => src(`${SRCDIR}/*.{html,ico,js}`).
  pipe(dest(`${DISTDIR}`)).
  pipe(connect.reload());

const buildTypeScript = () => {
  return src(`${SRCDIR}/*.ts`).
    pipe(sourcemaps.init()).
    pipe(ts({})).
    pipe(sourcemaps.write('./')).
    pipe(dest(`${DISTDIR}`)).
    pipe(connect.reload());
}

const buildWasm = () => {
  return src(`${SRCDIR}/*.wat`).
    pipe(wat2wasm({simd: true, reference_types: true}, {write_debug_names: true})).
    pipe(dest(`${DISTDIR}`)).
    pipe(connect.reload());
}

const build = parallel(buildAssets, buildTypeScript, buildWasm);

const clean = cb => del([`${DISTDIR}`], cb);

exports.build = build;
exports.clean = clean;
exports.default = async () => {
  await watch(`${SRCDIR}`, { ignoreInitial: false }, build);
  await connect.server({
    root: `${DISTDIR}`,
    livereload: true,
    port: 8000
  });
};
