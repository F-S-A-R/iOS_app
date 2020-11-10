Given /I am on the home page/ do
  expect($driver.find_element(:accessibility_id, 'BOOM').text).to eq "Hello, world!"
end