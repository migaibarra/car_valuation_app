source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'faker'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'rack-test'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
