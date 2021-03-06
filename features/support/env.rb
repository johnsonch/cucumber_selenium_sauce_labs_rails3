ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'webrat'
require 'webrat/core/matchers'
require 'sauce'
#require 'selenium-client'

SAUCE = ENV["HUB"].match(/sauce/)

Before do |scenario|
  browser = ENV["BROWSER"] || "firefox"
  browser_version = ENV["VERSION"] || "3."
  os = ENV["OS"] || "Windows 2003"
  host_to_test = ENV["HOST_TO_TEST"] || "http://www.google.com"
  if SAUCE
    @selenium = Sauce::Selenium.new(:browser_url => host_to_test, 
                                    :browser => browser, 
                                    :browser_version => browser_version, 
                                    :os => os,
                                    :job_name => scenario.name)
  else
      @selenium = Selenium::Client::Driver.new(
          :host => ENV["HUB"] || "localhost",
          :port => 4444,
          :browser => "*firefox",
          :url => host_to_test,
          :timeout_in_second => 60)
  end
end

After do |scenario|
  @selenium.stop
end
