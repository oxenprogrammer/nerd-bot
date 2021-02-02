require 'httparty'
require 'nokogiri'

require_relative './image_scraper'

# Image based jokes implementation
class ImageClone
  def image_jokes(scrap)
    my_array = []
    img_tags = scrap.css('figure.entry-image img[src]').select { |image| image['src'].start_with?('https') }
    if img_tags.is_a? Array
      img_tags.map { |t| t[:src] }
    else
      my_array
    end
  end

  def image_random_joke
    image = ImageScraper.new
    if image_jokes(image.scraper).any?
      image_jokes(image.scraper).sample
    else
      'Whoops, something is not quite right!, try again'
    end
  end

  private :image_jokes
end

