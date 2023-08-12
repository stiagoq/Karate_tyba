Feature: Get token using API
  Background:
    * def credentials = { "username":"admin", "password":"password123"}
    * url baseUrl

  Scenario: Generate a token
    Given path "/auth"
    And request credentials
    When method post
    Then status 200
    And match $.token == "#present"