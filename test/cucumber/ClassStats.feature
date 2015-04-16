#Jorge Vinícius Diniz e Lima - jvdl
Feature: Show statistics about the class
	As a teacher
	I want to see the percentage of students who passed, who is participating at the forum, and accessing the website
	So that I can know if I am teaching the class right

Scenario: Show percentage of students class
	Given all students received their evaluations
	And I am at the Assistant Teacher's statistics page
	When I pres the "Show Statistics"
	Then I should see the percentage of students who achieved MANA
	And I should see the percentage of students who achieved MPA
	And I should see the percentage of students who achieved MA

Scenario: Show percentage of students who passed before evaluation
	Given not all students received their evaluations
	And I am at the Assistant Teacher's statistics page
	When I press the "Show Statistics"
	Then I should see the names of the students with missing evaluations
	And I should see which evaluations are missing for each student

