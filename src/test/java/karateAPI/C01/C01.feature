Feature: GET
  Scenario: Get Request
    Given url 'https://jsonplaceholder.typicode.com'
    * path '/users'
    And method get
    * assert response[0].company.name=='Romaguera-Crona'
    * match response[0].company contains {"catchPhrase": "Multi-layered client-server neural-net","bs": "harness real-time e-markets"}

  Scenario: Get Request with id
    Given url 'https://jsonplaceholder.typicode.com'
    * path '/users',2
    And method get
    * status 200


  Scenario Outline: Get Request extra with id= <"id">
    Given url 'https://jsonplaceholder.typicode.com'
    * path '/users',<"id">
    And method get
    * status 200
    * assert response.id==<"id">
    Examples:
      | "id" |
      | 2    |
      | 4    |
      | 5    |