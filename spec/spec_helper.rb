ENV["RACK_ENV"] ||= "test"

require 'bundler'
Bundler.require(:default, :test)

require File.expand_path("../config/environment", __FILE__)
require 'rspec'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.app = LaughTracksApp

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end

  c.after(:each) do
    DatabaseCleaner.clean
  end

  c.include Capybara::DSL
end

Capybara.save_path = "./tmp/capybara"
