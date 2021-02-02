require 'httparty'
require 'nokogiri'

# Image based jokes implementation
class ImageClone
  def initialize
    @base_url = 'https://www.hongkiat.com/blog/programming-jokes/'
    unparsed_page = HTTParty.get(@base_url)
    @parsed_page = Nokogiri::HTML(unparsed_page.body)
  end

  def image_jokes
    my_array = []
    img_tags = @parsed_page.css('figure.entry-image img[src]').select { |image| image['src'].start_with?('https') }
    if img_tags.is_a? Array
      img_tags.map { |t| t[:src] }
    else
      my_array
    end
  end

  def image_random_joke
    if image_jokes.any?
      image_jokes.sample
    else
      'Whoops, something is not quite right!, try again'
    end
  end

  private :image_jokes
end

