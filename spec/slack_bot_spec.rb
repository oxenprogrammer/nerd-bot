require_relative './../lib/slack_bot'

my_jokes = Joker::Slack.new

describe my_jokes do
  def app
    Joker::Bot.instance
  end

  it 'should instantiate a class object' do
    expect(my_jokes).to be_a_kind_of Object
  end

  describe '#commnand:help' do
    it 'should respond with message' do
      expect(message: "#{SlackRubyBot.config.user} help").to respond_with_slack_message
    end
  end
end
