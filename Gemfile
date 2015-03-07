source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'uglifier', '>= 2.5.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'haml-rails'
gem 'jquery-rails'
gem 'bcrypt', '~> 3.1.5'
gem 'pg', '0.17.1'

group :production do
  gem 'rails_12factor', '0.0.2'
end

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
