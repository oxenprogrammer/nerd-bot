require 'slack-ruby-bot'
require 'httparty'
require 'nokogiri'

require_relative './slack_crawler'

module Joker
  module Commands
    # Slack bot commands
    class Jokes < SlackRubyBot::Commands::Base
      command 'jokes_image' do |client, data, _match|
        client.say(channel: data.channel, text: Image.image_random_joke)
      end

      command 'jokes_text' do |client, data, _match|
        client.say(channel: data.channel, text: Text.text_random_joke)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: Hello.say_hello)
      end
    end
  end
end
