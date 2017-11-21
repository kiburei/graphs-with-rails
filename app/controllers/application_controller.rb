class ApplicationController < ActionController::Base
  require 'roo'
  protect_from_forgery with: :exception
end
