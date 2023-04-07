Feature: test

Background:
  * url "https://testapi-4slbtqvzcq-uc.a.run.app"
  * def csv = read('2.csv')

Scenario Outline:
  Given path '/ID/'+<ID>
  And header Accept = 'application/json'
  When method get
  * assert responseStatus == 200
  * match response contains <result>
Examples: 
    |csv|
