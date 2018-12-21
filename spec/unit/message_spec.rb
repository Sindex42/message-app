require 'message'

describe Message do
  subject(:message) { described_class.create(text: 'Test message') }
  let(:time) { Time.now }

  context 'messages longer than 20 characters' do
    describe '#shorten' do
      it 'shows only the first 20 characters' do
        allow(message).to receive(:text) { 'This message exceeds 20 characters' }
        expect(message.shorten).to eq 'This message exceeds'
      end
    end
  end

  describe '#format_time' do
    it 'formats the time' do
      allow(message).to receive(:created_at) { time }
      expect(message.format_time).to eq time.strftime('%d-%m-%y %H:%M:%S')
    end
  end
end
