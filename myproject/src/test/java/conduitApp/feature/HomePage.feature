@suit1
Feature: Test for the User Creation
  Background: Define url
    Given url 'https://reqres.in/api/'
  Scenario Outline: Get all Users
    Given path 'users'
    And request
    """
      {
        "name": "<uname>",
        "job": "<job>"
      }

    """
    When method POST
    Then status 201
    And match response.job !contains "business"
    And match response.name == "soumen"
    Examples:
        | uname    | job               |
        | soumen   |software engineer       |