*** Settings ***
Documentation  Autotest Challenge API Tests
Resource    ../Resources/Steps/challenge_steps.robot

*** Test Cases ***
#THIS TEST FAILS AS API RESPONSE 500 ERROR FOR NEGATIVE VALUES
Assert Valid API Response For Input -5
   [Tags]  API Tests
   Given I create a session on API for -5
   Then I should see a valid response with an answer

Assert Valid API Response For Input 0
   [Tags]  API Tests
   Given I create a session on API for 0
   Then I should see a valid response with an answer

Assert Valid API Response For Input 10
   [Tags]  API Tests
   Given I create a session on API for 10
   Then I should see a valid response with an answer

Assert Valid API Response For Input 300
   [Tags]  API Tests
   Given I create a session on API for 300
   Then I should see a valid response with an answer

#THIS TEST FAILS AS API RESPONSE 500 ERROR FOR VALUES OVER 989
Assert Valid API Response For Input 1000
   [Tags]  API Tests
   Given I create a session on API for 1000
   Then I should see a valid response with an answer

Assert Valid API Response For Input !@%
   [Tags]  API Tests
   Given I create a session on API for !@%
   Then I should see a valid response with an answer

Assert Valid API Response For Input 100e+2
   [Tags]  API Tests
   Given I create a session on API for 100e+2
   Then I should see a valid response with an answer

Assert Valid API Response For Input +101
   [Tags]  API Tests
   Given I create a session on API for +101
   Then I should see a valid response with an answer

Assert Valid API Response For Input 12fr11
   [Tags]  API Tests
   Given I create a session on API for 12fr11
   Then I should see a valid response with an answer