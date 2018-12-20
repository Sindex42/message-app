require 'data_mapper'

DataMapper.setup(
  :default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}"
)
DataMapper.finalize

if ENV['RACK_ENV'] == 'test'
  DataMapper.auto_migrate!
else
  DataMapper.auto_upgrade!
end
