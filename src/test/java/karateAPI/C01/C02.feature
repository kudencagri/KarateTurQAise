Feature: Auth
#https://restful-booker.herokuapp.com
#username: 'admin', password: 'password123'

  Scenario: Auth
    * url 'https://restful-booker.herokuapp.com'
    * path 'auth'
    * request { username: 'admin', password: 'password123'}
    * method post
    * status 200
    * def TOKEN = response.token
    * print TOKEN

  Scenario:Creating Booking
    #https://jsonplaceholder.typicode.com/todos

  * url 'https://jsonplaceholder.typicode.com'
  * path '/todos'
  * def MyBody =
    """
    {
  "userId": 55,
  "title": "Tidy your room",
  "completed": false
  }
    """
   * request MyBody
   * method post
   * match response.id == 201

