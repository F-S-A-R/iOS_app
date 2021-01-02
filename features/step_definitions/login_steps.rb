Given /I login as "(.*)"/ do |email|
  $eyes.open(app_name: 'FSAR', test_name: 'Login Page', driver: @driver)
  @driver.find_element(:accessibility_id, 'EmailTxtField').clear
  @driver.find_element(:accessibility_id, 'EmailTxtField').send_keys email
  @driver.find_element(:accessibility_id, 'PasswordTxtField').clear
  @driver.find_element(:accessibility_id, 'PasswordTxtField').send_keys "supersecret"
  @driver.find_element(:accessibility_id, 'Sign In').click
  $eyes.check_window('Login Page')
end