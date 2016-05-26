# This file contains the ENV vars necessary to run the app locally.  
# Some of these values are sensitive, and some are developer specific.
#
# DO NOT CHECK THIS FILE INTO VERSION CONTROL

# Add account settings and API keys here.
# This file should be listed in .gitignore to keep your settings secret!
# Each entry gets set as a local environment variable.
# This file overrides ENV variables in the Unix shell.
# For example, setting:
# GMAIL_USERNAME: 'Your_Gmail_Username'
# makes 'Your_Gmail_Username' available as ENV["GMAIL_USERNAME"]
# GMAIL_USERNAME: 'Your_Gmail_Username'

ENV['AWS_SECRET_ACCESS_KEY']            = 'your_secret_access_key'
ENV['AWS_ACCESS_KEY_ID']         = 'your_access_key_id'
ENV['S3_BUCKET_NAME']         = 'your_bucket_name'
ENV['AWS_REGION']         = 'your_bucket_region'

# Admin user credidentials. These are called by application_controller.rb file.
ENV['ADMIN_USER'] = 'your_admin_username'
ENV['ADMIN_PASSWORD'] = 'generate_your_md5_password'

#Local database variables
ENV['POSTGRES_USER'] = 'your_postgres_username'
ENV['POSTGRES_PASSWORD'] = 'your_postgres_password'

#Secret keys for secret.yml
ENV['SECRET_KEY_BASE_DEV'] = 'your_secret_key_base_from_secrets_yml'
ENV['SECRET_KEY_BASE_TEST'] = 'your_secret_key_base_from_secrets_yml'

# Remember to set your git local and production variables using the terminal
# If using heroku, add the ENV variables for S3, the database, and the admin login.
# these is lives here https://dashboard.heroku.com/apps/your_app_name/settings