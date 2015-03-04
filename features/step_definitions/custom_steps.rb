Dir["./page_objects/pages/*.rb"].each {|file| require file }

$basepage = BasePage.new
$signuppage=SignUpPage.new


When(/^I get to the main page$/) do
  $basepage.open
end

Then(/^I see links$/) do |table|
  #transform table to hash
  #actual data is [["Log in"], ["Register"], ["My Blog"]]  where each element is array
  data=table.raw
  data.each do |ar|
   ar.each do |l|
      $basepage.is_message_exist? l.to_s
    end
  end
end


Then(/^I see text "(.*?)"$/) do |arg1|
  $basepage.is_message_exist? arg1
end

Then(/^I fill in text fields with correct random data to create user:$/) do |table|
  data=table.raw
  data.each do |k,l|
    $signuppage.field_set(k, l)
  end

end


Then(/^I should see text "(.*?)", "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I fill in text fields with correct random data to create article:$/) do |table|
  data=table.raw
  data.each do |k,l|
    $crnewuser.field_set(k, l)
  end
end

#attempt to click link, else to button
Then(/^I click "(.*?)"$/) do |arg1|
  $basepage.click_all arg1
end

Then(/^I see link "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end