require_relative './../lib/crawler/joke_text'
require_relative './../lib/crawler/text_scraper'

my_text = TextClone.new
my_scraper = TextScraper.new

describe TextClone do
  describe '#text_jokes' do
    jokes = my_text.send(:text_jokes, my_scraper.scraper)
    it 'should return a string array' do
      expect(jokes).to be_an(Array)
    end
  end

  describe '#text_random_joke' do
    it 'should return a string' do
      expect(my_text.text_random_joke).to be_a(String)
    end
  end
end
