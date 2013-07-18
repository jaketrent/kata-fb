index = require './index'

exports.route = (app) ->

  app.get '/', index.home
  app.get '/channel.html', index.channel
