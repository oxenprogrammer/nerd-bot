require_relative './text_scraper'

# Text based jokes implementation
class TextClone
  def text_jokes(scrap)
    my_array = []
    my_text_jokes = scrap.css('.joke-wrapper').map(&:text)
    if my_text_jokes.is_a? Array
      my_text_jokes
    else
      my_array
    end
  end

  def text_random_joke
    my_jokes = TextScraper.new
    if text_jokes(my_jokes.scraper).any?
      text_jokes(my_jokes.scraper).sample
    else
      'Whoops, something is not quite right!, try again'
    end
  end

  private :text_jokes
end

