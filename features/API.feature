Feature: API
  As a Provider
  So that I can update patient data
  I want an API endpoint to push data
  
  Scenario: POST Request Succeeds
    Given I send a valid JSON POST request to the API
    Then the response should be "200"
    And the message should be "Successfully added user."
    
         