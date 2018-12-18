require 'history'

describe History do
  subject(:history) { described_class.new }

  let(:message_1) { double :message }
  let(:message_2) { double :message_2 }
  let(:message_3) { double :message_3 }

  context 'saves messages' do
    it 'saves one message' do
      history.add(message_1)

      expect(history.log).to eq [message_1]
    end

    it 'saves two messages' do
      history.add(message_1)
      history.add(message_2)

      expect(history.log).to eq [message_1, message_2]
    end
  end

  context 'printing messages' do
    it 'prints message body and time' do
      allow(message_1).to receive(:time) { "10:30" }
      allow(message_1).to receive(:text) { "Testy testing" }
      history.add(message_1)

      expect(history.display).to eq ["#{message_1.time} -- #{message_1.text}"]
    end
  end



end
