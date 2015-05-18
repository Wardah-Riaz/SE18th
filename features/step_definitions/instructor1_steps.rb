Given /^a valid instructor$/ do
  @instructor1 = Instructor1.create!({
             :email => "Harris@gmail.com",
             :password => "12345"
             #:password_confirmation => "12345678"
           })
  #flunk "Unimplemented"
end

Given /the following instructors exist/ do |instructor1s_table|
  instructor1s_table.hashes.each do |instructor1|
    Instructor1.create instructor1
  end
end


Given /^a logged in instructor$/ do
  Given "a valid instructor"
  visit signin_url
  fill_in "Email", :with => "Harris@gmail.com"
  fill_in "Password", :with => "12345"
  click_button "Log in"

  #flunk "Unimplemented"
end
