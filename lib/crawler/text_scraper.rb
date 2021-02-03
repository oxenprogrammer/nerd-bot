require 'httparty'
require 'nokogiri'

# Text Scraper
class TextScraper
  def initialize
    @text_url = 'https://upjoke.com/programmer-jokes'
    unparsed_page_text = HTTParty.get(@text_url)
    @parsed_page_text = Nokogiri::HTML(unparsed_page_text.body)
  end

  def scraper
    @parsed_page_text
  end
end
