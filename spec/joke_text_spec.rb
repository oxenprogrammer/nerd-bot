require_relative './../lib/crawler/joke_text'

describe Text do
  describe '#text_jokes' do
    it 'should return a string array' do
      expect(Text.text_jokes).to be_an(Array)
    end
  end

  describe '#text_random_joke' do
    it 'should return a string' do
      expect(Text.text_random_joke).to be_a(String)
    end
  end
end
