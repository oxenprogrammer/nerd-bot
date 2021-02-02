require_relative './../lib/crawler/hello'

describe Hello do
  describe '#say_hello' do
    it 'should return the string Heyyy, ready for some humors?' do
      expect(Hello.say_hello).to eq('Heyyy, ready for some humors?')
    end
  end
end
