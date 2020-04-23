source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
# gem 'sass-rails', '>= 6'
# gem 'turbolinks', '~> 5'
# gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'reform'
# gem 'reform', github: 'trailblazer/reform', branch: 'v2.3.0.rc2'
# gem 'dry-validation'
gem 'dry-monads'
gem "trailblazer"
gem "trailblazer-rails"
gem "trailblazer-cells"
gem "cells-rails"
gem "cells-erb"
gem "reform-rails"

group :development, :test do
  gem 'pry'
  gem 'factory_bot_rails'
end

group :development do
  gem "rspec-rails"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'simplecov'
  gem 'database_cleaner-active_record'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# gem "trailblazer", '2.0'
# gem "trailblazer-rails", '1.0.2'
# gem 'trailblazer-operation', '0.0.13'
