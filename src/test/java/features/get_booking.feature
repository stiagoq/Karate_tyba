Feature: Get booking using get api
  Background:
    * url baseUrl

  Scenario Outline: Get a booking
    Given path '/booking/' + <id>
    And header Accept = 'application/json'
    When method get
    Then status <status>
    * def jsonObject = response
    And match $.firstname == $jsonObject.firstname

    Examples:
      | id      |status  |
      | 2       |200     |
      | 210112  |404     |
