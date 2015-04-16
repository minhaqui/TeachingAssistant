#Pedro Henrique Sousa de Moraes - phsm

Feature: Send statistics to students
	As a teacher
	I want to send statistics to the students about your performace in the evaluations and the discipline activities
	So they can evaluate their own performance

	Scenario: Send class score to itself
		Given I am on Teaching Assistant teacher's homepage
		When I follow "Show statistics"
		Then I should see Show statistic's page
		When I follow "Send class score to itself"
		Then I should see "Class score has sent"

	Scenario: Send participation feedback to students
		Given I am on Show statistc's page
		When I follow "Send class participation feedback to itself"
		Then I should see "Class participation feedback has sent"

	Scenario: Send subjects for study based on evaluation's performace
		Given I am on Show statistc's page
		When I follow "Send subjects evaluations"
		Then I should see "The subjects has sent"

	Scenario: Send right answers statistics to students
		Given I am on Show statistc's page
		When I follow "Send right answers statistics"
		Then I should see "The right answers statistics has sent"		
