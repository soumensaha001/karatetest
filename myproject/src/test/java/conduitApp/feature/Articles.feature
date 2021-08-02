@suit2
Feature: Test for the homepage
Background: Define url
  Given url 'https://conduit.productionready.io/api/'
  * def tokenResponse = callonce read('classpath:helpers/CreateToken.feature')
  * def token = tokenResponse.authToken
    Scenario: Create a new article
    Given header Authorization = 'Token '+token
    Given path 'articles'
    And request {article: {tagList: [], title: "Newone1", description: "askjsalkjskas1", body: "blabla1"}}
    When method Post
    Then status 200
    And match response.article.title == 'Newone1'