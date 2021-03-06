source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# user slim
gem "slim-rails"
gem "haml-rails"
group :development do
  gem 'erb2haml'
end

# js/css lib
gem 'underscore-rails'
gem 'bootstrap3-rails'

# angularjs
gem "angular-gem", '~> 1.2.1' # run => rails g angular:install
gem 'angular-ui-select2-rails'


group :development, :test do
  gem 'pry-rails'

  gem 'hirb'

  gem 'hirb-unicode'

  gem 'better_errors'
  gem 'binding_of_caller'

  # Test Tools
  gem 'rspec-rails', '~> 3.0.1'
  gem 'shoulda-matchers', '~> 2.6.0'
  gem 'factory_girl_rails', '~> 4.4.1'

  gem 'guard-rspec'

end

group :test do
  gem "faker"
  gem "capybara"
  gem "database_cleaner"
  gem "launchy"
  gem "selenium-webdriver"
end


gem 'nokogiri'

# 複雑なスクレイピング
gem 'mechanize'

# crontab管理
gem 'whenever', :require => false

# paging
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'

# use aws s3
gem 'aws-sdk'


# rmagick
gem 'rmagick', :require => 'RMagick'

# API Support
# gem 'grape'


# User
# gem 'devise'
gem 'sorcery'

# 並列処理
gem 'parallel'
