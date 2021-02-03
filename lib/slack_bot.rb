require 'slack-ruby-bot'

module Joker
  # Displays commands help
  class Slack < SlackRubyBot::Bot
    help do
      title 'Joker The Nerd Bot'
      desc 'This bot serves you with some programming humors'

      command :say_hello do
        title 'say_hello'
        desc 'The Bot greets back'
        long_desc 'The bot responds with a greeting string'
      end

      command :jokes_text do
        title 'jokes_text'
        desc 'Get random Programming Jokes as Text'
        long_desc 'The Bot craws and scraps the web, returning a random joke texts'
      end

      command :jokes_image do
        title 'jokes_image'
        desc 'Get random Programming Jokes as Image'
        long_desc 'The Bot craws and scraps the web, returning a random joke image'
      end
    end
  end
end
