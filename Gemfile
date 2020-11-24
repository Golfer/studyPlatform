source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'slim-rails'

gem 'devise'
gem 'pundit'
gem 'carrierwave', '~> 2.0'
gem 'rmagick'
gem 'country_select', '~> 4.0'
gem 'active_model_serializers'
gem 'fast_jsonapi', git: 'https://github.com/Netflix/fast_jsonapi.git'

# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'pry'
  gem 'pry-byebug', require: false
  gem 'pry-rails', require: false

  # Ruby check code style
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-performance', require: false

  gem 'brakeman', require: false

  gem 'guard-brakeman'
  gem 'guard-rubocop', require: false

  gem 'letter_opener'
end

group :test do
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.8'
  gem 'fuubar'
  gem 'rspec-activemodel-mocks'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'vcr'
  gem 'webmock'
  gem 'factory_bot_rails'
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
  gem 'ffaker'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
