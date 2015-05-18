Feature: Instructor can create a new course

  As a faculty member
  So that students can enroll into the course
  I want to create a new course page

#Background to be added here

Scenario: Add Post

	Given I am on the instructors page
	When I follow "Add InsructorCourse"
	Then I should be on the instructorcourses page
	#Given I am on the discussions page
        When I fill in "Instructoremail" with "inst1@gmail.com"
  	When I fill in "Coursecode" with "444"
	When I fill in "Coursename" with "Calculus"
	And I press "Create Instructorcourse"
	Then I should be on coursecreated page 
	And I should see "Instructorcourse was successfully created"
	When I follow "Back"
	Then I should be on the instructorcourses page
	And I should see "Calculus"



	 



