Feature: User can signup to the website

  #As a user
  #So that I can login in future and access the restricted areas
  #I want to signup to the website

#add background here

Background: students have been added to database 



Scenario: Signup

	Given I am on the home page
	When I follow "Sign-up as Student"
	Then I should be on the signup page


Scenario: Signup

	Given I am on the signup page
	When I fill in the following:
		| Email 	| lisa@gmail.com   |
		| Password 	| 121212           |
		| Name 		| Lisa             |
		| Gender 	| F                |
		#| Dob		| 23-November-1992 |
	And I press "Create Student"
	Then I should see "Student account created. now Login!"

Scenario: Signup

	Given I am on the home page
	When I follow "Sign-up as Instructor"
	Then I should be on the signupInstructor page

Scenario: Signup
#:Your_Description
	Given I am on the signupInstructor page
	When I fill in the following:
		| Email 		| sarah@gmail.com    |
		| Password 		| 212121             |
		#| Dob			| 28-November-1992   |
		| Full name 		| sarah              |
		| Your description 	| I am an Instructor |
	And I press "Create Instructor1"
	Then I should see "Instructor account was successfully created. now login!"


