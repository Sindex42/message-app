require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id, Serial
  property :text, Text
  property :created_at, DateTime

  has n, :tags, :through => Resource

  def shorten
    text.slice(0...20)
  end

  def format_time
    created_at.strftime('%d-%m-%y %H:%M:%S')
  end
end
