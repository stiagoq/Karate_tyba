Feature: Update booking using put API
  Background:
    * def update_booking = {"lastname": "Quinchia","depositpaid": false}
    * url baseUrl

  Scenario: Create a new booking
    Given path "/booking/3026"
    And header Authorization = 'Basic ' + token
    And header token = 'abc123'
    And request update_booking
    And header Accept = 'application/json'
    When method put
    Then status 403
    And match $ == "Forbidden"
    * print response

