process.env.NODE_ENV = process.env.NODE_ENV || 'development'

<<<<<<< HEAD
const environment = require('./environment')

module.exports = environment.toWebpackConfig()
=======
const webpackConfig = require('./base')

module.exports = webpackConfig
>>>>>>> 995e08f2e0e60c9f7950b4fc3112aed9c801608d
