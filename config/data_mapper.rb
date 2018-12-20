require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/message_app")
DataMapper.finalize
DataMapper.auto_migrate!
