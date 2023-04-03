require 'csv'

namespace :hexlet do
  desc 'Import a few new users'
  task :import_users, [:relative_path] => :environment do |t, args|
    relative_path = args[:relative_path]
    @i = 1
    CSV.foreach(relative_path, headers: true) do |row|
      birthday_view = DateTime.strptime(row['birthday'], '%m/%d/%Y')
      param = row.to_hash.merge(birthday: birthday_view)
      User.create!(param)
    end
  end
end
