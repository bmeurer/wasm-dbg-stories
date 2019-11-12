const {dest, parallel, series, src, watch} = require('gulp');
const connect = require('gulp-connect');
const del = require('delete');
const wat2wasm = require('gulp-wat2wasm');

const DISTDIR = './dist';
const SRCDIR = './src';

const buildAssets = () => src(`${SRCDIR}/*.{html,ico,js}`).
  pipe(dest(`${DISTDIR}`)).
  pipe(connect.reload());

const buildWasm = () => {
  return src(`${SRCDIR}/*.wat`).
    pipe(wat2wasm({}, {write_debug_names: true})).
    pipe(dest(`${DISTDIR}`)).
    pipe(connect.reload());
}

const build = parallel(buildAssets, buildWasm);

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
