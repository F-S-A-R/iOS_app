require 'appium_lib'
require 'selenium-webdriver'
require 'pry'
require 'rspec'

caps = {}
# Set URL of the application under test
caps['app'] = (File.join(File.dirname(__FILE__), 'FoodTracker.app'))

# Specify device and os_version for testing
caps['deviceName'] = 'iPhone 11 Pro'
caps['platformVersion'] = '14.0'
caps['automationName'] = 'XCUITest'

#Set the platform name
caps['platformName'] = 'iOS'

# Initialize the remote Webdriver and desired capabilities defined above
appium_driver = Appium::Driver.new({
                                       'caps' => caps,
                                       'appium_lib' => {
                                           :server_url => "http://0.0.0.0:4723/wd/hub"
                                       }}, true)
$driver = appium_driver.start_driver