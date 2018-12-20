require 'data_mapper'

class Message
 include DataMapper::Resource

 property :id, Serial
 property :text, String
 property :created_at, DateTime
end
