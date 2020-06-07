@Dynamictag
Feature: Dynamic feature
  I want to use this template for my feature file

	Background:
    * def emailKeys = []
    * def Collections = Java.type('java.util.Collections')
		
  Scenario: Title of your scenario outline
    Given url 'https://reqres.in/api/users?page=1'
    When method get
    Then status 200
		* def fname = karate.jsonPath(response,"$..first_name")
		* print fname
		* Collections.sort(fname, java.lang.String.CASE_INSENSITIVE_ORDER)
		* print fname