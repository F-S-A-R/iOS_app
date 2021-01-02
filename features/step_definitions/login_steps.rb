Given /I login as "(.*)"/ do |email|
  eyes = Applitools::Appium::Eyes.new
  eyes.api_key = 'mpPWTHC2CNz5wPajbzzo8U104mOQ0s2HcfbOEILr1iC108g110'
  p eyes.match_level
  eyes.open(app_name: 'FSAR', test_name: 'Login Page', driver: @driver)
  @driver.find_element(:accessibility_id, 'EmailTxtField').clear
  @driver.find_element(:accessibility_id, 'EmailTxtField').send_keys email
  @driver.find_element(:accessibility_id, 'PasswordTxtField').clear
  @driver.find_element(:accessibility_id, 'PasswordTxtField').send_keys "supersecret"
  @driver.find_element(:accessibility_id, 'Sign In').click
  # eyes.abort_if_not_closed
  eyes.check_window('Login Page')
  eyes.close
end