require File.join(File.dirname(__FILE__), '..', '..', 'app.rb')

require 'capybara'
require 'capybara/cucumber'

Capybara.app = Blog

class BlogWorld
  include Capybara::DSL
end

World do
  BlogWorld.new
end