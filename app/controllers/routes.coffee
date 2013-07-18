index = require './index'
fb = require './fb'
twilio = require './twilio'

exports.route = (app) ->

  app.get '/', index.home
  app.get '/fb', fb.fb
  app.get '/channel.html', fb.channel

  app.get '/twilio', twilio.twilio
  app.post '/twilio', twilio.twilioPost
