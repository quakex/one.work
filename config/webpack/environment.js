const { environment } = require('@rails/webpacker')
const { resolve } = require('path')
const paths = require('rails_com')

const choices = require('rails_com/package/loaders/choices')
const rails_ujs = require('rails_com/package/loaders/rails_ujs')
const moment = require('rails_com/package/loaders/moment')
const remote_js_load = require('rails_com/package/loaders/remote_js_load')
const weui = require('./loaders/weui.js')

environment.loaders.append('choices', choices)
environment.loaders.append('rails_ujs', rails_ujs)
environment.loaders.append('moment', moment)
environment.loaders.append('weui', weui)
environment.loaders.append('remote_js_load', remote_js_load)

const env = environment.toWebpackConfig()
debugger
env.entry = Object.assign(paths(), env.entry)
env.resolve.modules = env.resolve.modules.concat(resolve('node_modules'))

module.exports = env
