source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'rails-backbone'
gem 'backbone_sync-rails', :git => 'git://github.com/linjunpop/backbone_sync-rails.git'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-gitflow'
  gem 'pry'
  gem 'pry-doc'
end

group :development, :test do
  gem 'awesome_print'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'jasminerice'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-jasmine'
  gem 'guard-livereload'
  gem 'guard-pow'
  # for mac
  gem 'rb-fsevent', :require => false
  gem 'ruby_gntp', :require => false
  # for linux
  gem 'rb-inotify', :require => false
  gem 'libnotify', :require => false
end

group :test do
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'shoulda'
end

group :staging, :production do
  gem 'passenger'
end
