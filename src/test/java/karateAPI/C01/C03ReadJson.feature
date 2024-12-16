Feature: Read Json
  Scenario: POST

    * url 'https://httpbin.org'
    * path 'anything'
    * def mybody = read('data.json')
    * request mybody
    * method post
    * assert response.json.additionalneeds== 'Breakfast'
    * assert response.json.bookingdates.checkin == '2018-01-01'

  Scenario Outline: Read csv id= <id>

    * url 'https://gorest.co.in/public/v2'
    * path '/users',<id>
    And method get
    * status 200
    * assert response.id==<id>
    Examples:
      | read('data.csv') |