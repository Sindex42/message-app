namespace :db do
  task :setup do
    require './lib/message'
    require './lib/tag'
    require 'data_mapper'

    DataMapper.setup(
      :default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}"
    )
    DataMapper.finalize
  end

  task :auto_migrate => :setup do
    DataMapper.auto_migrate!
    puts 'Migration successful!'
  end

  task :auto_upgrade => :setup do
    DataMapper.auto_upgrade!
    puts 'Upgrade successful!'
  end
end
