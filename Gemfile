source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'active_storage_validations'
gem 'aws-sdk-s3', '~> 1.114'
gem 'devise'
gem 'devise-i18n', '~> 1.10'
gem 'image_processing', '>= 1.2'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick', '>= 4.9.5'
gem 'net-smtp'
gem 'pg', '~> 1.1', group: :production
gem 'pg_search'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.6'
gem 'rails-i18n', '~> 6.0'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
