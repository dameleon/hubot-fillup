btoa = require 'btoa'

module.exports = (robot) ->
  url = process.env.HUBOT_CLEAR_IMAGE_URL || 'http://placeimg.com/640/832/tech'
  
  robot.respond /fillup/i, (msg) ->
    rnd = btoa(Date.now())
    msg.send "#{url}?#{rnd}"
