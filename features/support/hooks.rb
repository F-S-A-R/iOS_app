caps = {}
# Set URL of the application under test
caps['app'] = (File.join(File.dirname(__FILE__), 'FSAR.app'))

# Specify device and os_version for testing
caps['deviceName'] = 'iPhone 11 Pro'
caps['platformVersion'] = '14.3'
caps['automationName'] = 'XCUITest'
caps['platformName'] = 'iOS'

# Initialize the remote Webdriver and desired capabilities defined above
appium_driver = Appium::Driver.new({
                                       caps: caps,
                                       appium_lib: {
                                           server_url: "http://0.0.0.0:4723/wd/hub"
                                       }}, true)


AfterConfiguration do
  $eyes = Applitools::Appium::Eyes.new
  $eyes.api_key = 'mpPWTHC2CNz5wPajbzzo8U104mOQ0s2HcfbOEILr1iC108g110'
  p $eyes.match_level
end

Before do
  @driver = appium_driver.start_driver
end

After do
  @driver.quit
  $eyes.close
  # eyes.abort_if_not_closed
end