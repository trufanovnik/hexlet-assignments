require 'csv'

namespace :hexlet do
  desc 'Import a few new users'
  task :import_users, [:relative_path] => :environment do |t, args|
    relative_path = args[:relative_path]
    @i = 1
    CSV.foreach(relative_path, headers: true) do |row|
      param = row.to_hash
      User.create!(param)
    end
  end
end
