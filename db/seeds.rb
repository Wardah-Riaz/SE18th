# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = [{:email => "Alice_12@gmail.com", :password => "11111", :name => "Alice",:gender => "F", :dob => 23-November-1992},
{:email => "John44@hotmail.com", :password => "22222", :name => "John", :gender => "M", :dob => 25-October-1992},
{:email => "George_90@gmail.com", :password => "33333", :name =>"George" , :gender => "F", :dob => 25-August-1993}]

students.each do |student|
  Student.create(student)
end


#:DoB, :Full_Name, :Your_Description, :email, :password
instructors = [{:email => "Harris@hotmail.com", :password => "12345", :Full_Name => "M. Harris",:Your_Description => "I'll offer 3 courses", :DoB => 23-November-1992},
{:email => "Danyal@hotmail.com", :password => "67890", :Full_Name => "M. Danyal",:Your_Description => "I am an Instructor ", :DoB => 27-May-1993},
{:email => "Bob@gmail.com", :password => "60606", :Full_Name => "Bob Hudson",:Your_Description => "You'll enjoy my courses", :DoB => 27-May-1993}]
instructors.each do |instructor|
  Instructor1.create(instructor)
end

courses = [{:title => "Mathematics", :body => "Algebra"},
{:title => "Physics", :body => "Mechanics"}
{:title => "ComputerScience", :body => "Algorithms"}]
courses.each do |course|
  Course.create(course)
end


discussions = [{:Date => "2015-05-12", :Name => "Alice_12@gmail.com", :Message => "This app is amazing!"},
{:Date => "2015-02-17", :Name => "Harris@hotmail.com", :Message => "I have updated the list of my courses"}]
discussionrs.each do |discussion|
  Discussion.create(discussion)
end

instructorcourses = [{:instructoremail => "Harris@hotmail.com", :coursecode => "303", :coursename => "DiscreteMath",:coursedescription => "Graph theory included"},
{:instructoremail => "Danyal@hotmail.com", :coursecode => "511", :coursename => "Graphics",:coursedescription => "Unity is included"},
{:instructoremail => "Bob@gmail.com", :coursecode => "412", :coursename => "Networks",:coursedescription => "More Focus on CLoud Computing"}]
instructorcourses.each do |instructorcourse|
  Instructorcourse.create(instructorcourse)
end

studentcourses = [{:email => "George_90@gmail.com", :coursecode => "303", :date_of_joining => "2015-03-11"},
{:email => "John44@hotmail.com", :coursecode => "303", :date_of_joining => "2015-05-19"},
{:email => "Alice_12@gmail.com", :coursecode => "511", :date_of_joining => "2015-04-1"}]
studentcourses.each do |studentcourse|
  Studentcourse.create(studentcourse)
end




