# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '>= 4.0.1'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'graphiql-rails', '~> 1.9.0', group: :development
gem 'graphql', '~> 2.1.0'
gem 'pg_search'
gem 'rack-cors'
gem 'will_paginate', '~> 4.0'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', require: 'dotenv/load'
  gem 'letter_opener'

  gem 'pry-byebug', '~> 3.8'
  gem 'pry-rails', '~> 0.3.9'
  gem 'pry-remote', '~> 0.1.8'

  gem 'bullet'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.17'
  gem 'pry'

  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'rspec', '~> 3.12'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem 'shoulda-matchers', '~> 5.3'

  gem 'brakeman'

  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'annotate', '~> 3.0', '>= 3.0.3'
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'rspec-sidekiq', '~> 3.1'
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.21.2'
end
