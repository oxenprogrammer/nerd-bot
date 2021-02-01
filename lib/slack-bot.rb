module JokerTheNerd
  class SlackBot < SlackRubyBot::Bot
    help do
      title 'Joker The Nerd Bot'
      desc 'This bot serves you with some programming humors'

      command :say_hello do
        title 'Greet the Bot'
        desc 'The Bot greets back'
        long_desc 'The bot responds with a greeting string'
      end

      command :jokes_text do
        title 'Joke Text'
        desc 'Get random Programming Jokes as Text'
        long_desc 'The Bot craws and scraps the web, returning a random joke texts'
      end

      command :jokes_image do
        title 'Joke Image'
        desc 'Get random Programming Jokes as Image'
        long_desc 'The Bot craws and scraps the web, returning a random joke image'
      end
    end
  end
end
