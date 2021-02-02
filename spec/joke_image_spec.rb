require_relative './../lib/crawler/joke_image'
my_image = ImageClone.new

describe ImageClone do
  describe '#image_jokes' do
    it 'should return a string array' do
      jokes = my_image.send(:image_jokes)
      expect(jokes).to be_an(Array)
    end
  end

  describe '#image_random_joke' do
    it 'should return a string' do
      expect(my_image.image_random_joke).to be_a(String)
    end
  end
end