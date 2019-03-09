Feature: Weather
  In order to get weather
  As a CLI
  I want to be as objective as possible

  Scenario: get berlin
    When I run `weather weather berlin`
    Then the output should contain "Berlin"