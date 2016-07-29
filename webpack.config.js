var webpack = require('webpack');
var path = require('path');

module.exports = {
  entry: [
      "webpack-dev-server/client?http://0.0.0.0:8080",
      'webpack/hot/only-dev-server',
      "./app/components/Main.cjsx"
  ],
  output: {
    path: path.join(__dirname, "public"),
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      {
        test: /\.coffee$/,
        loader: 'coffee'
      },
      {
        test: /\.cjsx$/,
        loaders: ['react-hot', 'coffee', 'cjsx']
      }
    ]
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ],
  resolveLoader: {
    modulesDirectories: ['node_modules']
  },
  resolve: {
    extensions: ['', '.js', '.json', '.coffee', '.cjsx']
  }
};
