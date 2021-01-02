Given /I login as "(.*)"/ do |email|
  eyes = Applitools::Selenium::Eyes.new
  eyes.api_key = 'mpPWTHC2CNz5wPajbzzo8U104mOQ0s2HcfbOEILr1iC108g110'
  eyes.test(app_name: 'FSAR', test_name: 'Login Page test', driver: @driver) do
    @driver.find_element(:accessibility_id, 'EmailTxtField').clear
    @driver.find_element(:accessibility_id, 'EmailTxtField').send_keys email
    @driver.find_element(:accessibility_id, 'PasswordTxtField').clear
    @driver.find_element(:accessibility_id, 'PasswordTxtField').send_keys "supersecret"
    byebug
    @driver.find_element(:accessibility_id, 'Sign In').click
  end
end