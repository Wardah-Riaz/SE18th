Feature: User can add a post in the discussion forum

  As a logged in user
  So that my point of view or problem is heard
  I want to participate in a discussion topic in course forum
  
#Background to be added here


Background: discussions have been added to database

  Given the following discussions exist:

  | Date       | Name               | Message                               | 
  | 2015-05-12 | Alice_12@gmail.com | This app is amazing!                  | 
  | 2015-02-17 | Harris@hotmail.com | I have updated the list of my courses | 


Scenario: Add Post
	Given I am on the students page
	When I follow "Discussion forum"
	Then I should be on the discussions page
	#Given I am on the discussions page
        When I fill in "Message" with "i like this app"
	And I press "Create Discussion"
	Then I should be on discussionCreated page 
	And I should see "Discussion was successfully created"
	When I follow "Back"
	Then I should be on the discussions page
	And I should see "i like this app"

Scenario: Add Post

	Given I am on the instructors page
	When I follow "Discussion Forum"
	Then I should be on the discussions page
	#Given I am on the discussions page
        When I fill in "Message" with "good app"
	And I press "Create Discussion"
	Then I should be on discussionCreated page 
	And I should see "Discussion was successfully created"
	When I follow "Back"
	Then I should be on the discussions page
	And I should see "good app"



	 


