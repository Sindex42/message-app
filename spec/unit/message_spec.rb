require 'message'

describe Message do
  subject(:message) { described_class.create(text: 'Test message') }

  context 'messages longer than 20 characters' do
    describe '#shorten' do
      it 'shows only the first 20 characters' do
        allow(message).to receive(:text) { 'This message exceeds 20 characters' }
        expect(message.shorten).to eq 'This message exceeds'
      end
    end
  end

  # describe '#format_time' do
  #   it 'formats the time' do
  #
  #   end
  # end
end
