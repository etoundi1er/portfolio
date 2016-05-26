source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# CSS vendor autoprefix
gem "autoprefixer-rails"
gem 'tinymce-rails', '~> 4.3'
# gem 'tinymce-rails-imageupload', github: 'PerfectlyNormal/tinymce-rails-imageupload'
gem 'responders', '~> 2.0'
# Social sharing buttons found here https://richonrails.com/articles/adding-social-sharing-buttons-to-your-rails-app
gem 'social-share-button', '~> 0.1.6'

# gem 'cancancan', '~> 1.10'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# gem "slim-rails"
# gem 'slim', '~> 3.0', '>= 3.0.6'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks'
# Page transition and loader similar to youtube
gem 'nprogress-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# gem "rack-offline"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'aws-sdk'
gem 'turbolinks_transitions'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  #favicon
  gem 'rails_real_favicon'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end

ruby '2.3.0'