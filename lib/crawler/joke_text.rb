require 'httparty'
require 'nokogiri'

# Text based jokes implementation
class TextClone
  def initialize
    @text_url = 'https://upjoke.com/programmer-jokes'
    unparsed_page_text = HTTParty.get(@text_url)
    @parsed_page_text = Nokogiri::HTML(unparsed_page_text.body)
  end

  def text_jokes
    my_array = []
    my_text_jokes = @parsed_page_text.css('.joke-wrapper').map(&:text)
    if my_text_jokes.is_a? Array
      my_text_jokes
    else
      my_array
    end
  end

  def text_random_joke
    if text_jokes.any?
      text_jokes.sample
    else
      'Whoops, something is not quite right!, try again'
    end
  end

  private :text_jokes
end

