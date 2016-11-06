source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'autoprefixer-rails'
gem 'tinymce-rails', '~> 4.3'
# gem 'tinymce-rails-imageupload', github: 'PerfectlyNormal/tinymce-rails-imageupload'
gem 'responders', '~> 2.0'
# Social sharing buttons found here https://richonrails.com/articles/adding-social-sharing-buttons-to-your-rails-app
gem 'social-share-button', '~> 0.1.6'

# gem 'cancancan', '~> 1.10'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby# gem 'slim-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks'
gem 'nprogress-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'paperclip', git: 'git://github.com/thoughtbot/paperclip.git'
gem 'aws-sdk'
gem 'turbolinks_transitions'

group :doc do
    gem 'sdoc', '~> 0.4.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development do
    gem 'quiet_assets'      # stop assets from spaming the terminal
    gem 'better_errors'     # better errors
    gem 'binding_of_caller' # necessary for interactive console on error-pages
    gem 'ruby-prof'
    gem 'spring'
end

group :development, :test do
    # Access an IRB console on exception pages or by using <%= console %> in views
    gem 'rubocop', require: false
    gem 'rubocop-checkstyle_formatter', require: false
    gem 'web-console', '~> 2.0'
    gem 'byebug'
    gem 'rails_real_favicon'
end

group :production do
    gem 'rails_12factor'
    gem 'puma'
end

ruby '2.3.1'
