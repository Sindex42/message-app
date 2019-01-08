require './config/data_mapper'

namespace :db do
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts 'Migration successful!'
  end

  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts 'Upgrade successful!'
  end
end
