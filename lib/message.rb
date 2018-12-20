require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :text, String
  property :created_at, DateTime

  def shorten
    text.slice(0...20)
  end

  def format_time
    created_at.strftime('%d-%m-%y %H:%M:%S')
  end
end
