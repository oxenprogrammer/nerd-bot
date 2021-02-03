$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require_relative './bin/bot'

Joker::Slack.run
