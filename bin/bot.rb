#!/usr/bin/env ruby

require 'slack-ruby-bot'
require_relative './../lib/command/slack_command'
require_relative './../lib/slack-bot'

require 'httparty'
require 'nokogiri'
class Web
  def initialize
    @base_url = 'https://www.hongkiat.com/blog/programming-jokes/'
    unparsed_page = HTTParty.get(@base_url)
    @parsed_page = Nokogiri::HTML(unparsed_page.body)

    @text_url = 'https://upjoke.com/programmer-jokes'
    unparsed_page_text = HTTParty.get(@text_url)
    @parsed_page_text = Nokogiri::HTML(unparsed_page_text.body)
  end

  def images
    imgs = @parsed_page.css('figure.entry-image img[src]').select { |image| image['src'].start_with?('https') }
    images_urls = imgs.map { |t| t[:src] } 
    puts images_urls
  end

  def text_jokes
    my_jokes  = @parsed_page_text.css('.joke-wrapper').map(&:text)
    puts my_jokes.sample
  end
end

web = Web.new
web.images

