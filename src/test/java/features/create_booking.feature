Feature: Create booking using post API
  Background:
    * url baseUrl
    * def new_booking = read("classpath:jsonfile/create_booking.json")

  Scenario Outline: Create a new booking
    Given path "/booking"
    And request new_booking[<number>]
    And header Accept = 'application/json'
    When method post
    Then status 200
    And match $.booking.firstname == '<firstname>'
    And match $.booking.lastname == '<lastname>'
    And match $.bookingid == "#present"

    Examples:
      |number| firstname |lastname    |
      | 0    | Victoria  |Marquez     |
      | 1    | Paola     |Vergara     |
      | 2    | Manuela   |Valderrama  |












