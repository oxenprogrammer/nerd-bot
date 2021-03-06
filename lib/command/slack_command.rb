require 'slack-ruby-bot'

require_relative './../crawler/joke_text'
require_relative './../crawler/joke_image'
require_relative './../crawler/hello'

module Joker
  module Commands
    # Slack bot commands
    class Jokes < SlackRubyBot::Commands::Base
      image_joke = ImageClone.new
      text_joke = TextClone.new
      command 'jokes_image' do |client, data, _match|
        client.say(channel: data.channel, text: image_joke.image_random_joke)
      end

      command 'jokes_text' do |client, data, _match|
        client.say(channel: data.channel, text: text_joke.text_random_joke)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: Hello.say_hello)
      end
    end
  end
end
