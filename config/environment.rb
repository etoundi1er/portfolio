# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Set local variable http://tammersaleh.com/posts/managing-heroku-environment-variables-for-local-development/
require File.join(File.dirname(__FILE__), 'boot')

# Load heroku vars from local file
heroku_env = File.join(Rails.root, 'config', 'local_env.rb')
load(heroku_env) if File.exist?(heroku_env)

# Initialize the Rails application.
Rails.application.initialize!
