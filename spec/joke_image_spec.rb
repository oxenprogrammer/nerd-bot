require_relative './../lib/crawler/joke_image'

describe Image do
  describe '#image_jokes' do
    it 'should return a string array' do
      expect(Image.image_jokes).to be_an(Array)
    end
  end

  describe '#image_random_joke' do
    it 'should return a string' do
      expect(Image.image_random_joke).to be_a(String)
    end
  end
end