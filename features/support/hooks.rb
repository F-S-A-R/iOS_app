AfterConfiguration do
  $eyes = Applitools::Appium::Eyes.new
  $eyes.api_key = ENV['APPLITOOLS_KEY']
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
