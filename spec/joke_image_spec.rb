require 'httparty'
require 'nokogiri'

require_relative './../lib/crawler/joke_image'
require_relative './../lib/crawler/image_scraper'

my_image = ImageClone.new
my_scraper = ImageScraper.new

describe ImageClone do
  describe '#image_jokes' do
    it 'should return a string array' do
      jokes = my_image.send(:image_jokes, my_scraper.scraper)
      expect(jokes).to be_an(Array)
    end

    base_url = 'https://www.hongkiat.com/blog/programminghhhhhh/'
    unparsed_page = HTTParty.get(base_url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    false_jokes = my_image.send(:image_jokes, parsed_page)
    it 'should return an empty array' do
      expect(false_jokes).to eq []
    end
  end

  describe '#image_random_joke' do
    it 'should return a string' do
      expect(my_image.image_random_joke).to be_a(String)
    end
  end
end
