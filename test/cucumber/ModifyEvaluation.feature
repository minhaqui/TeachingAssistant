#Deyvson Lazaro da Silva

Feature: Modify evaluation
	As a teacher
	I want modify my existing evaluations
	So I can update my evaluations #"So I can test the students better" should be a better reason
	
	Scenario: modify evaluation
		Given i'm visualising the evaluation "Test of build of scenarios"
		When I rename this evaluation for "Build of scenarios"
		Then I should see "evaluation updated"
				
	Scenario: modify evaluation using duplicated name
		Given i'm visualising the evaluation "Test of build of scenarios"
		And I have other evaluation with the name "Build of scenarios"
		When I rename this evaluation for "Build of scenarios"
		Then I should see "evaluation can't be updated, name already exist"
		
	Scenario: modify evaluation using blank name
		Given i'm visualising the evaluation "Test of build of scenarios"
		When I rename this evaluation for ""
		Then I should see "name can't be blank"
		
	Scenario: modify evaluation inserting question
		Given i'm visualising the evaluation "Test of build of scenarios"
		When I insert the question "Scenarios can help us in tests?" in this evaluation
		And I insert the answer "True"
		Then I should see "evaluation updated"
		
	Scenario: modify evaluation inserting question
		Given i'm visualising the evaluation "Test of build of scenarios"
		When I insert the question "Scenarios can help us in tests?" in this evaluation
		Then I should see "evaluation can't be updated, all the question need of answers"
		
	Scenario: modify evaluation inserting question
		Given i'm visualising the evaluation "Test of build of scenarios"
		When I set to blank the answer of the question "Scenarios can help us in tests?" in this evaluation
		Then I should see "evaluation can't be updated, all the question need of answers"
		