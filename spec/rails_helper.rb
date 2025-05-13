ENV["RAILS_ENV"] ||= "test"
require "appsignal"
require_relative "./dummy/application" # Load the dummy app
require "rspec/rails"
