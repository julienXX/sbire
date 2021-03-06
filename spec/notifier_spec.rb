require_relative '../lib/notifier.rb'

describe Notifier do
  describe ".call" do
    it "send a message" do
      expect(Notifier).to receive(:system).with("notify-send 'a message'")
      Notifier.call('a message')
    end
  end
end
