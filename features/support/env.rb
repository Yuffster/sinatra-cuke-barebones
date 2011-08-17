ENV['RACK_ENV'] = 'test'

require './app/main'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Main
Capybara.current_driver = :selenium

# Uncomment to test the app remotely.
# TODO: Move this into config somewhere.
#Capybara.app_host = 'http://floating-mist-547.heroku.com'

class MainWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  MainWorld.new
end
