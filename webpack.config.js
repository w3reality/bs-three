const webpack = require("webpack");

module.exports = [{
  name: "bundle",
  entry: './src/main.bs.js',
  output: {
    path: __dirname + '/build',
    filename: 'bundle.js',
  },
  mode: "development",
  devtool: "source-map",
}];

