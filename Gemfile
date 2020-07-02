# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'
gem 'capistrano', '~> 3.11'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails'
gem 'ionicons-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'paperclip', '~> 6.0.0'
gem 'pg'
gem 'prometheus-client'
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot'
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'simplecov'
  gem 'simplecov-console'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'shoulda-matchers'
end
