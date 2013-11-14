source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.1'

# TODO had to downgrade multi_json and sass because rails refused to init.
# Remove this line and try again later
gem 'sass', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'therubyracer', require: 'libv8'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'font-awesome-rails'
gem 'haml_coffee_assets'
gem 'bcrypt-ruby'#, '~> 3.0.0'
gem 'foreigner'

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'spork-rails'
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-haml-coffee'
  gem 'libnotify'
  gem 'annotate' #, :git => 'git://github.com/ctran/annotate_models.git'
  gem 'capybara'
  gem 'launchy'
  gem "better_errors"
  gem "binding_of_caller"
  # To use debugger
  # gem 'ruby-debug19', :require => 'ruby-debug'
  # To use debugger
  # gem 'debugger'
end

group :linux_development do
  gem 'rb-inotify'
end

group :mac_development do
  gem 'rb-fsevent'
end

group :test do
  gem 'sqlite3'
  gem 'turn', '>= 0.8.3', :require => false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
end

group :production do
  gem 'pg'
  # Use unicorn as the web server
  # gem 'unicorn'

  # Deploy with Capistrano
  # gem 'capistrano'
end

group :assets do
  gem 'sass-rails'#,   '~> 3.2.3'
  gem 'coffee-rails'#, '~> 3.2.1'
  gem 'uglifier'#, '>= 1.0.3'
end

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
