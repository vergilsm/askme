source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

# Use to view logs on the heroku
gem 'rails_12factor'

# https://github.com/ambethia/recaptch
gem "recaptcha", require: "recaptcha/rails"

gem 'rails-i18n'

gem 'uglifier'

# Use jquery as the JavaScript library
gem 'jquery-rails'

group :production do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

