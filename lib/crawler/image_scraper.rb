require 'httparty'
require 'nokogiri'

# Text Scraper
class ImageScraper
  def initialize
    base_url = 'https://www.hongkiat.com/blog/programming-jokes/'
    unparsed_page = HTTParty.get(base_url)
    @parsed_page = Nokogiri::HTML(unparsed_page.body)
  end

  def scraper
    @parsed_page
  end
end
