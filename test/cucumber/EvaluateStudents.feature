#Pedro Henrique

Feature: Evaluate the students
  As a teacher
  I want to evaluate my students with respect to various criteria
  So I want to tell him what I think about him on these criteria

#Stakeholder: Paulo Borba
#[16:26:54] Paulo Borba: eu quero avaliar um aluno com relação a vários criterios
#[16:27:06] Paulo Borba: não quero dar uma simples nota a ele
#[16:27:26] Paulo Borba: quero dizer a ele o que eu achei dele com relação a vários critérios

#Controller Scenario
  Scenario: Registering an evaluation criterion that does not exist
    Given the system does not have an evaluation criterion with name “Requirements”
    When I create an evaluation criterion with name “Requirements”
    Then the evaluation criterion is properly stored in the system

#Controller Scenario
  Scenario: Registering an evaluation criterion that already exists
    Given the system does not have an evaluation criterion with name “Requirements”
    When I create an evaluation criterion with name “Requirements”
    Then the criterion of evaluation was not stored in the system

#Controller Scenario
  Scenario: Updating the list of criteria for registered students
    Given the system does not have an evaluation criterion with name “Requirements”
    And the student "Peter" is registered in the system
    When I create an evaluation criterion with name “Requirements”
    Then the system evaluates "Peter" also using the criterion "requirements"

#GUI Scenario
  Scenario: Evaluate a registered student
    Given I am on the Students Page
    And the student "Peter" is registered in the system
    And there is a criterion called "Requirements" registered in the system
    And I should see a table with "Peter" in a row and "Requirements" in a column
    When I change the value of the cell in line "Peter" and column "requirements" to "MPA"
    And I click on “Save” button
    Then I am still viewing the Students Page

#GUI Scenario
  Scenario: Add a new evaluation criterion
    Given I am on the Students Page
    And I click on "Add new evaluation criterion"
    And I should see the Evaluation Criterion creation page
    When I fill "requirements" in the Name field
    And I click "Save"
    Then I am should see the Students page with a new column named "Requirements"


#Other scenarios gui to do: remove the evaluation criterion