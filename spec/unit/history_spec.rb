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



end
