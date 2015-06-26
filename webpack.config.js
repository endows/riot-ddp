webpack = require('webpack')
module.exports = {
  entry: {
    app: ["./src/main.js"]
  },
  output: {
    path: './build',
    filename: 'bundle.js'
  },
  plugins: []
};
