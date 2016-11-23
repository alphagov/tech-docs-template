require 'rspec'
require 'rspec-html-matchers'
require 'middleman'

RSpec.configure do |config|
  config.include RSpecHtmlMatchers
end
