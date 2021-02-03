require 'httparty'
require 'nokogiri'

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

    base_url = 'https://www.hongkiat.com/blog/programming/'
    unparsed_page = HTTParty.get(base_url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    false_jokes = my_text.send(:text_jokes, parsed_page)
    it 'should return an empty array' do
      expect(false_jokes).to eq []
    end
  end

  describe '#text_random_joke' do
    it 'should return a string' do
      expect(my_text.text_random_joke).to be_a(String)
    end
  end
end
