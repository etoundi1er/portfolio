require 'digest'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate, except: [:show, :index, :about, :readbooks]
  
  private
    def authenticate
        authenticate_or_request_with_http_basic('Are you the admin? Then login motherfucker') do |username, password|
            md5_of_password = Digest::MD5.hexdigest(password)
            # this ENV variable are in config/local_env.rb
            username == ENV['ADMIN_USER'] && md5_of_password == ENV['ADMIN_PASSWORD']
        end
    end
end
