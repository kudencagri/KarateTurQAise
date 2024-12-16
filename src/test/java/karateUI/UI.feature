Feature: Google Test
  Scenario: Google
    Given driver 'https://www.google.com'
    Then input("textarea[name=q]",'karate dsl')
    When submit().click("input[name=btnI]")
    Then waitForUrl('https://github.com/karatelabs/karate')