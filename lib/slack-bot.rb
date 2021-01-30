module JokerTheNerd
  class SlackBot < SlackRubyBot::Bot
    help do
      title 'Joker The Nerd Bot'
      desc 'This bot serves you with some programming humors'

      command :get_all_humors do
        title 'get_all_humors'
        desc 'Images of humor'
        long_desc 'Images of programming humors'
      end
    end
  end
end
