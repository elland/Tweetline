And /^I visit homepage$/ do
  visit root_path
end

And /^I input "([^"]*)"$/ do |text|
  fill_in "Text", :with => text
end

And /^I click to submit$/ do
  click_button "Post text!"
end

And /^I should see "([^"]*)" posted$/ do |text|
  page.should have_content(text)
end

And /^I should see alert$/ do
  page.should have_selector(:alert)
end