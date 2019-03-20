source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

# Multi-client and secure token-based authentication
gem 'devise_token_auth', '~> 1.0.0'
# Back end json format
gem 'active_model_serializers', '~> 0.10.9'
# Pagination
gem 'wor-paginate', '~> 0.1.4'
# BG processing
gem 'sidekiq', '~> 5.2.5'
gem 'sidekiq-scheduler', '~> 3.0.0'
# Authorization policies
gem 'pundit', '~> 2.0.1'
# Http requests library
gem 'httparty', '~> 0.16.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Ruby static code analyzer and code formatter
  gem 'rubocop', '~> 0.65.0', require: false
  # Env variables loader
  gem 'dotenv-rails', '~> 2.7.1'
  # Fake data generator
  gem 'faker', '~> 1.9.3'
  # Fixtures replacement
  gem 'factory_bot', '~> 5.0.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Ensures a clean state during tests
  gem 'database_cleaner', '~> 1.7.0'
  # Testing suite
  gem 'rspec-rails', '~> 3.8.2'
  gem 'shoulda-matchers', '~> 4.0.1'
  gem 'rails-controller-testing', '~> 1.0.4'
  # Http requests mock
  gem 'webmock', '~> 3.5.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
