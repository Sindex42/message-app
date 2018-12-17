require 'message'

describe Message do
  subject(:message) { described_class.new('Just foo, no bar') }
  let(:time_double) { double :time }

  it 'saves some text' do
    expect(message.text).to eq 'Just foo, no bar'
  end

  it 'saves the current time' do
    allow(Time).to receive(:now).and_return(time_double)
    expect(message.time).to eq time_double
  end
end
