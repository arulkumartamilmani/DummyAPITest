Feature: Capability to create an employee and delete using endpoints
  Scenario: A new employee is created using endpoint and verified
    Given create employee endpoint is working
    When  POST request with following parameters
    Then  validate the response to confirm employee creation

  Scenario: Delete the existing employee using endpoint
    Given delete employee endpoint is working
    When  DELETE request with following parameter
    Then validate the response to confirm employee is deleted

