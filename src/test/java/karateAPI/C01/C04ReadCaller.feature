Feature: Read Caller
  Scenario: Caller

    * def mycaller = call read('/Users/mehmet/IdeaProjects/KarateTurQAise/src/test/java/caller/caller.feature') {id:7491957}
    * match mycaller.response.name == 'Heema Khan'