Feature: Data
  As a Provider
  So that I can view data
  I want an averaged representation of points
  
  Scenario: Data is nonnegative
    Given I have data
    Then the data should be nonnegative
         
  Scenario: Data is averaged
    Given I have data
    Then the data should be less than the size of original data