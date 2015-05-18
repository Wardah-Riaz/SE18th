Given /^a valid discussion$/ do
  @discussion = Discussion.create!({
             :Date => "2015-05-12",
             :Name => "Alice_12@gmail.com",
             :Message => "This app is amazing!"
             #:password_confirmation => "12345678"
           })
  #flunk "Unimplemented"
end

Given /the following discussions exist/ do |discussions_table|
  discussions_table.hashes.each do |discussion|
    Discussion.create discussion
  end
end


