source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Database adapter
gem 'sqlite3', '~> 1.3.6', groups: [:development, :test]
gem 'pg', '~> 0.11', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'compass-rails',  '~> 1.1.3'
gem 'bootstrap-sass', '~> 2.3.2.2'
gem 'twitter-bootstrap-rails-confirm'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'coffee-script'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails', '4.2.1'

gem 'sugar-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'js-routes'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Markup
gem 'slim-rails'
gem 'simple_form', '~> 3.0.0'

gem 'active_attr'

# Search
gem 'ransack'

# authorization
gem 'devise'
gem 'devise-i18n'
gem 'cancan'

gem 'enumerize', '0.8.0'

gem 'russian'

gem 'inherited_resources'

group :production do
  # For deploy to Heroku
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# factory_girl also added to production for providing demo data
gem 'factory_girl_rails'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'

  gem 'guard', '~> 2.2.3'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'hirb'

  #source maps
  gem 'coffee-rails-source-maps'
end


group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'timecop'
  gem 'launchy'
end
