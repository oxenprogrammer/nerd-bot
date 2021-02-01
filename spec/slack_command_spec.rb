require_relative './../lib/command/slack_command'

my_jokes = Joker::Commands::Jokes.new

describe my_jokes do
  def app
    Joker::Bot.instance
  end

  it 'should instantiate a class object' do
    expect(my_jokes).to be_a_kind_of Object
  end

  describe '#command:jokes_text' do
    it 'should return a hash' do
      expect(message: "#{SlackRubyBot.config.user} jokes_text").to be_a Hash
    end
  end

  describe '#command:jokes_image' do
    it 'should return a hash' do
      expect(message: "#{SlackRubyBot.config.user} jokes_image").to be_a Hash
    end
  end

  describe '#commnand:say_hello' do
    it 'should respond with message' do
      expect(message: "#{SlackRubyBot.config.user} say_hello").to respond_with_slack_message
    end
  end
end
