# Bruno Cipriano Minhaqui da Silva - bcms
Feature: Sign Up
	As a student
	I want to sign up on the Teaching Assistant system
	So I can login into the system, get evaluations from the teacher and do the self-evaluation
	
	Scenario: Sign Up
		Given I am on the Teaching Assistant home page
		When I press "Sign Up"
		Then I should be on the Sign Up page
		When I fill "name" with "Bruno Minhaqui" and "login" with "bcms@cin.ufpe.br"
		And I press "Sign Up"
		And a student with this name or this login is not yet on the system
		Then the student should be stored by the system
	  	And a random password should be sent to the email of the student
	
	Scenario: Sign Up with name field blank
		Given I fill in "login" with "bcms@cin.ufpe.br" on the Sign Up page
		And I let "name" blank
		And I press "Sign Up"
		Then I should see a error message
		And nothing is stored by the system
		
	Scenario: Sign Up with a login not on Cin's domain
		Given I fill in "name" with "Bruno Minhaqui" on the Sign Up page
		And I fill in "login" with "minhaqui@gmail.com"
		And I press "Sign Up"
		Then the system shows an error message
		And nothing is stored by the system
	
	Scenario: Sign Up with duplicated name
		Given I Sign Up "Bruno Minhaqui" with login "bcms2@cin.ufpe.br" on the Sign Up page
		And "Bruno minhaqui" with login "bcms@cin.ufpe.br" is already stored in the system
		And I press "Sign Up"
		Then the system shows an error message
		And nothing is stored by the system
	
	Scenario: Sign Up with duplicated login
		Given I am on the Sign Up page
		When I Sign Up with name "Bruno Minhaqui" and login "bcms@cin.ufpe.br"
		And I try to Sign Up with name "Bruno Cipriano" and login "bcms@cin.ufpe.br" 
		Then the system shows an error message
		And nothing is stored by the system