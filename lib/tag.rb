require 'data_mapper'

class Tag
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :unique => true

  has n, :messages, :through => Resource
end
