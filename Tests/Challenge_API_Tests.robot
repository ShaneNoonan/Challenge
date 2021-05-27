*** Settings ***
Documentation  Autotest Challenge API Tests
Library     RequestsLibrary
Library     JSONLibrary
Resource    ../Resources/Steps/challenge_steps.robot
Test Teardown  Close All Browsers


*** Test Cases ***
Assert all Ktags exist on Gambling.com UK
   [Tags]  API Tests
   Given I create a session on API
