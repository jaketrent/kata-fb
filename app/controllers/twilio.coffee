# get creds at https://www.twilio.com/user/account/developer-tools/test-credentials
client = require('twilio')(process.env.TWILIO_ACCOUNT, process.env.TWILIO_TOKEN)

exports.twilio = (req, res) ->
  res.render "twilio"

exports.twilioPost = (req, res) ->
  to = req.body.to
  from = process.env.TWILIO_FROM #req.body.from
  message = req.body.message
  client.sendSms
    to:"+#{to}",
    from: "+#{from}",
    body: message
  , (err, responseData) ->
      if (!err)
        console.log(responseData.from)
        console.log(responseData.body)
      res.render "twilioPost"