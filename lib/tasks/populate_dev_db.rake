namespace :db do
  desc "Fill dev database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_data_source_1
  end
end

def make_data_source_1
  DataSource.create!(:name => 'name 1',
                      :value => 'value 1')
end
