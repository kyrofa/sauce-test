require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  capabilities = Selenium::WebDriver::Remote::Capabilities.send ENV["BROWSER"]
  capabilities.platform = ENV["PLATFORM"]
  capabilities.version = ENV["VERSION"]

  capabilities['seleniumVersion'] = Selenium::WebDriver::VERSION
  capabilities['tunnelIdentifier'] = ENV['TUNNEL_ID']
  capabilities['name'] = ENV['TUNNEL_ID'] 

  driven_by :selenium, using: :remote, options: {
    url: "http://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com/wd/hub",
    desired_capabilities: capabilities
  }
end
