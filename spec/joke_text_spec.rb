require_relative './../lib/crawler/joke_text'

my_text = TextClone.new

describe TextClone do
  describe '#text_jokes' do
    jokes = my_text.send(:text_jokes)
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
