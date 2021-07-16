const { environment } = require('@rails/webpacker')

//added for Bootstrap
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({

$: 'jquery',

jQuery: 'jquery',

Popper: ['popper.js', 'default']

}))
//end addition for Bootstrap

module.exports = environment
