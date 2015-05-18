Given /^a valid student$/ do
  @student = Student.create!({
             :email => "Alice_12@gmail.com",
             :password => "11111",
             :name => "Alice"
             #:password_confirmation => "12345678"
           })
  #flunk "Unimplemented"
end

Given /the following students exist/ do |students_table|
  students_table.hashes.each do |student|
    Student.create student
  end
end


Given /^a logged in student$/ do
  Given "a valid student"
  visit signin_url
  fill_in "Email", :with => "Alice_12@gmail.com"
  fill_in "Password", :with => "11111"
  click_button "Log in"

  #flunk "Unimplemented"
end

Given /the following disscussions exist/ do |disscussions_table|
  disscussions_table.hashes.each do |disscussion|
    Disscussion.create disscussion
  end
end
