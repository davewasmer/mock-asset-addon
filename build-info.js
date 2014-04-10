var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');
var p = require('ember-cli/lib/preprocessors');
var preprocessCss = p.preprocessCss;
var preprocessTemplates = p.preprocessTemplates;
var preprocessJs = p.preprocessJs;
var join = require('path').join


module.exports = function(packageTree) {

  this.include('app/**/*.js')
  this.include('lib/**/*.js')

  var app = pickFiles(packageTree, {
    srcDir: '/app',
    destDir: '/'
  });
  app = preprocessTemplates(app);
  app = preprocessJs(app);

  var lib = pickFiles(packageTree, {
    srcDir: '/lib',
    destDir: '/'
  });
  lib = preprocessJs(lib);

  var files = pickFiles(packageTree, {
    srcDir: '/public',
    destDir: '/'
  });

  return mergeTrees([app, lib, files]);
};