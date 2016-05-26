# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += ['modernizr.js', 'cbpFWTabs.js', 'ie9.css', 'ie8.css', 'railscasts.css', 'highlight.js' ]
# Rails.application.config.assets.precompile += %w( modernizr.js )
# Rails.application.config.assets.precompile += %w( cbpFWTabs.js )
# Rails.application.config.assets.precompile += %w( typekit.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
