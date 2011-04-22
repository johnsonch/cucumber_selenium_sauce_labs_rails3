# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
require 'cucumber/formatter/unicode'

require 'cucumber/rails/rspec'
require 'cucumber/rails'
require 'webrat'
require 'webrat/core/matchers'

require 'sauce'
# By default, any exception happening in your Rails application will bubble up
# to Cucumber so that your scenario will fail. This is a different from how 
# your application behaves in the production environment, where an error page will 
# be rendered instead.
#
# Sometimes we want to override this default behaviour and allow Rails to rescue
# exceptions and display an error page (just like when the app is running in production).
# Typical scenarios where you want to do this is when you test your error pages.
# There are two ways to allow Rails to rescue exceptions:
#
# 1) Tag your scenario (or feature) with @allow-rescue
#
# 2) Set the value below to true. Beware that doing this globally is not
# recommended as it will mask a lot of errors for you!
#
ActionController::Base.allow_rescue = false
selenium = Sauce::Selenium.new(:browser_url => "http://saucelabs.com",
    :browser => "firefox", :browser_version => "3.", :os => "Windows 2003",
    :job_name => "My first test!")
selenium.start

# Webrat.configure do |config|
#   config.mode = :selenium
#   config.open_error_files = false # Set to true if you want error pages to pop up in the browser
#   config.application_framework = :external
# end