process.env.NODE_ENV = process.env.NODE_ENV || 'production'

<<<<<<< HEAD
const environment = require('./environment')

module.exports = environment.toWebpackConfig()
=======
const webpackConfig = require('./base')

module.exports = webpackConfig
>>>>>>> navegacao
