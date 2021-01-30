require 'httparty'
require 'nokogiri'

module JokerTheNerd
  module Commands
    class Jokes < SlackRubyBot::Commands::Base
      def initialize
        super
        @base_url = 'https://www.https://www.hongkiat.com/blog/programming-jokes/'
        unparsed_page = HTTParty.get(@base_url)
        @parsed_page = Nokogiri::HTML(unparsed_page.body)
      end

      command 'get_all_humors' do |client, data, _match|
        first_humor = @parsed_page.css('figure.entry-image img').find { images }
        client.say(channel: data.channel, image: first_humor)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end

  class HelloText
    def self.say_hello
      'Hello, Joker the Nerd Here'
    end
  end
end
