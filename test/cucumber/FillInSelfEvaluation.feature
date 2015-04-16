Feature: Fill in self-evaluation
	As a student
	I want to fill my self-evaluation
	So I can send my feedback to the teacher

	Scenario: fill in self-evaluation successfully
		Given I am on Teaching Assistant student's homepage
		And I click "self-evaluation"
		Then I should be on self-evaluation page
		Given there's some self-evaluation available
		And I choose it
		And I fill in the required fields
		And I press "Send"
		Then I should see "Self-evaluation sent"

	Scenario: sending incomplete self-evaluation
		Given I am on self-evaluation page
		And I choose some evaluation
		And I fill in half of the required fields
		And I press "Send"
		Then I should see "Self-evaluation sent"

	Scenario: sending duplicate self-evaluation
		Given I am on self-evaluation page
		And I choose some evaluation
		And the answer for this evaluation was sent before
		And I click "Send"
		Then I should see "Self-evaluation already sent"