Feature: Graph
  As a Provider
  So that I check a patient's progress
  I want to be able to properly view the data
  
  Scenario: Correct number of graphs
    Given I've signed in
    And I've added a patient
    Then there should be a graph for each day of data

         