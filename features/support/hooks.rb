AfterConfiguration do
  $eyes = Applitools::Appium::Eyes.new
  $eyes.api_key = 'mpPWTHC2CNz5wPajbzzo8U104mOQ0s2HcfbOEILr1iC108g110'
  p $eyes.match_level
end

Before do |scenario|
  @driver = $appium_driver.start_driver
  @driver.manage.timeouts.implicit_wait = 5
  $eyes.open(app_name: 'FSAR', test_name: "#{scenario.name}", driver: @driver)
end

After do
  @driver.quit
  $eyes.close
  # eyes.abort_if_not_closed
end
