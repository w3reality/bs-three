const webpack = require("webpack");

module.exports = [{
  name: "bundle",
  entry: './src/main.bs.js',
  output: {
    path: __dirname + '/build',
    filename: 'bs-three.js',
  },
  mode: "development",
  devtool: "source-map",
}, {
  name: "demo",
  entry: './src/main.bs.js',
  output: {
    path: __dirname + '/docs',
    filename: 'bs-three.js',
  },
  mode: "production"
}];