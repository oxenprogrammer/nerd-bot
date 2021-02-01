require_relative './../lib/command/slack_crawler'

describe Hello do
  describe '#say_hello' do
    it 'should return the string Heyyy, ready for some humors?' do
      expect(Hello.say_hello).to eq('Heyyy, ready for some humors?')
    end
  end
end

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
