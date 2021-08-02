
Feature: Test for get Users
  Background: Define url
    Given url 'https://reqres.in/api/'
  Scenario: Get all Users
    Given path 'users?page=2'
    When method Get
    Then status 200
    And match response.data[0].email !contains 'micheal'
    And match response.data[0].first_name !contains 'abcd'
    And match response.data == "#array"
