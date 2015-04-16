Feature: Send evaluation
	As a teacher
	I want to send evaluation
	So I can choose the evaluation and send it

	Scenario: send evaluation successfully
		Given I am on Teaching Assistant teacher's homepage
		When I follow "send evaluation"
		Then I should see all registered evaluations
		When I choose an evaluation
		And I press "Send"
		Then I can see "Evaluation sent"

	Scenario: send evaluation without choosing it
		Given I am on Send Evaluation page
		And I press "Send"
		And no evaluation is chosen
		Then I should see "No evaluations chosen"

	Scenario: sending duplicate evaluation
		Given I am on Send Evaluation page
		And "evaluation 1" has been sent before
		When I choose "evaluation 1"
		And I press "send"
		Then I should see "Evaluation's already been sent"