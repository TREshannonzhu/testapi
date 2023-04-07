Feature: test

Background:
  * url "https://testapi-4slbtqvzcq-uc.a.run.app"

Scenario: test
  Given path '/questions'
  And header Accept = 'application/json'
  When method get
  * assert responseStatus == 200
  * match response contains {"ID":2,"Year":2022,"Genre":"臨床血液学","Question":"問2","Answer":"答え2","Commentary":"コメント2"}