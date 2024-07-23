require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']
BROWSER = ENV['BROWSER']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambiente/#{AMBIENTE}.yml")

World(Pages)
Faker::Config.locale = 'pt-BR'

Capybara.register_driver :site_prism do |app|

  if BROWSER.eql?('no_headless')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--disable-infobars'])
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: option)
  elsif BROWSER.eql?('headless')
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--headless', 'disable-gpu'])
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: option)    
  end
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize  
  config.default_max_wait_time = 45   
  config.app_host = CONFIG['url_padrao']
 end
