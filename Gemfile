source 'https://rubygems.org'

ruby '2.1.10'

gem 'rails', '3.1.0'

# Database
gem 'sqlite3', '~> 1.3.13'

# Auth / Core
gem 'devise', '1.4.7'
gem 'stamp', '~> 0.5.0'
gem 'will_paginate', '~> 3.0.12'
gem 'haml-rails', '~> 0.3.5'
gem 'jquery-rails', '~> 1.0.19'
gem 'grit', '~> 2.5.0'
gem 'carrierwave', '~> 0.5.8'
gem 'six', '~> 0.2.0'
gem 'faker', '~> 1.1.2'

# SSH / Config
gem 'lockfile', '~> 2.1.0'
gem 'inifile', '~> 2.0.2'
gem 'net-ssh', '~> 2.9.4'

# Pagination (DO NOT use both will_paginate + kaminari)
# gem 'kaminari' ❌ REMOVED

# JS runtime (Rails 3.1 asset pipeline requirement)
gem 'therubyracer', '~> 0.10.2'

group :assets do
  gem 'sass-rails', '~> 3.1.0'
  gem 'coffee-rails', '~> 3.1.0'
  gem 'uglifier', '~> 1.3.0'
end

group :development do
  gem 'rails-footnotes', '~> 3.7.5'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.9.0'
  gem 'shoulda', '~> 2.11.3'
  gem 'capybara', '~> 1.1.2'
  gem 'awesome_print', '~> 1.0.2'
  gem 'database_cleaner', '~> 0.7.2'
  gem 'launchy', '~> 2.1.2'
end

group :test do
  gem 'turn', '~> 0.8.3', :require => false
  gem 'simplecov', '~> 0.7.1', :require => false
end
