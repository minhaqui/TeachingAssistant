Feature: Register evaluation
	As a teacher
	I want to register evaluation
	So I can see evaluations and send them to students

	Scenario: register evaluation
		Given I am on Teaching Assistant Teacher's home page
		When I follow "register evaluation"
		Then I should be on the Register evaluation page
		When I fill in "title" with "Evaluation 1"
		And I fill in "item one" with "Question 1"
		And I fill in "item one criterion" with "criterion 1"
		And I press "Register evaluation"
		Then I should see "Evaluation registered"

	Scenario: register evaluation with no items
		Given I am on Register evaluation page
		When I fill in "title" with "Evaluation 1"
		And no items are informed
		And I press "Register evaluation"
		Then I should see "Evaluation registered"

	Scenario: register duplicate evaluation
		Given I am on Register evaluation page
		And the evaluation "Evaluation 1" is stored in the system
		When I fill "title" with "Evaluation 1"
		And I press "Register evaluation"
		Then I should see "Evaluation already exist"

	Scenario: register evaluation with no title
		Given I am on Register evaluation page
		When I press "Register evaluation"
		Then I should see "Evaluation's title is required"