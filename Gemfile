# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Authentication
gem "devise_token_auth"

# Serializer
gem 'active_model_serializers', '~> 0.10.0'

# Soft Delete
gem "paranoia"

ruby "2.7.0"
gem "rails", "~> 6.1.4"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "bootsnap", ">= 1.4.4", require: false

group :test do
  gem "shoulda-matchers"
  gem "rails-controller-testing"
end

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop-rails", require: false
  gem "rubocop-rails_config"
end

group :development do
  gem "listen", "~> 3.3"

  gem "spring"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
