# Say hello class implementation
class Hello
  def self.say_hello
    'Heyyy, ready for some humors?'
  end
end

# Text based jokes implementation
class Text
  def self.text_jokes
    @text_url = 'https://upjoke.com/programmer-jokes'
    unparsed_page_text = HTTParty.get(@text_url)
    @parsed_page_text = Nokogiri::HTML(unparsed_page_text.body)
    @parsed_page_text.css('.joke-wrapper').map(&:text)
  end

  def self.text_random_joke
    text_jokes.sample
  end
end

# Image based jokes implentation
class Image
  def self.image_jokes
    @base_url = 'https://www.hongkiat.com/blog/programming-jokes/'
    unparsed_page = HTTParty.get(@base_url)
    @parsed_page = Nokogiri::HTML(unparsed_page.body)
    imgs = @parsed_page.css('figure.entry-image img[src]').select { |image| image['src'].start_with?('https') }
    imgs.map { |t| t[:src] }
  end

  def self.image_random_joke
    image_jokes.sample
  end
end
