require 'httparty'
require 'nokogiri'

module JokerTheNerd
  module Commands
    class Jokes < SlackRubyBot::Commands::Base
      command 'jokes_image' do |client, data, _match|
        client.say(channel: data.channel, text: JokesImage.image_jokes)
      end

      command 'jokes_text' do |client, data, _match|
        client.say(channel: data.channel, text: JokesText.text_jokes)
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

  class JokesText
    def self.text_jokes
      @text_url = 'https://upjoke.com/programmer-jokes'
      unparsed_page_text = HTTParty.get(@text_url)
      @parsed_page_text = Nokogiri::HTML(unparsed_page_text.body)
      my_jokes = @parsed_page_text.css('.joke-wrapper').map(&:text)
      my_jokes.sample
    end
  end

  class JokesImage
    def self.image_jokes
      @base_url = 'https://www.hongkiat.com/blog/programming-jokes/'
      unparsed_page = HTTParty.get(@base_url)
      @parsed_page = Nokogiri::HTML(unparsed_page.body)
      imgs = @parsed_page.css('figure.entry-image img[src]').select { |image| image['src'].start_with?('https') }
      imgs.sample
    end
  end
end
