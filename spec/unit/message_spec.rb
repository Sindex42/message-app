require 'message'

describe Message do
  subject(:message) { described_class.new('Just foo, no bar') }
  let(:time_double) { Time.now.strftime("%d-%m-%Y %H:%M:%S") }

  it 'saves some text' do
    expect(message.text).to eq 'Just foo, no bar'
  end

  it 'saves the current time' do
    expect(message.time).to eq time_double
  end
end
