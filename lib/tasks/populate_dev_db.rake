namespace :db do
  desc "Fill dev database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_data_source_1
  end
end

def make_data_source_1
  100.times do |n|
      DataSource.create!(:name => "name #{n + 1}",
                         :value => n + 1)
  end
end
