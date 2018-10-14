namespace :static do
    desc 'Generate static site in ./out/ directory'
    task :generate do
        Dir.mkdir 'out' unless File.exist? 'out'
        Dir.chdir 'out' do
            `wget -mnH http://localhost:3000/`
        end
        `rsync -ruv --exclude=.svn/ public/ out/`
    end

    desc 'Run tiny HTTP server from ./out/ directory'
    task :server do
        Dir.chdir 'out' do
            puts 'Started HTTP server at http://localhost:8000/. Press CTRL+C to exit.'
            `python -m SimpleHTTPServer`
        end
    end
end

# script to generate static site from rails
# Prerequisites
# You need wget, rsync and Python besides your Ruby on Rails.

# To avoid including timestamp in static files, add this to config/environment.rb
# ENV['RAILS_ASSET_ID'] = ''

# then, you must first start Rails server to generate the website to out/ directory
# $ rails server
# $ rake static:generate

# You can test the website with a tiny HTTP server.
# $ rake static:server
# $ x-www-browser 'http://localhost:8000/'
