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
  end

  describe '#image_random_joke' do
    it 'should return a string' do
      expect(my_image.image_random_joke).to be_a(String)
    end
  end
end
