*** Settings ***
Documentation  Autotest Challenge Frontend Tests
Library  SeleniumLibrary
Resource    ../Resources/Steps/challenge_steps.robot
Test Teardown  Close All Browsers

*** Test Cases ***
Assert Incorrect String Input Type Message
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger abc and Select Calculate
    Then I should see the correct result for abc

Assert Incorrect Decimal Input Type Message
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 0.2 and Select Calculate
    Then I should see the correct result for 0.2

Assert Factorial of 0
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 0 and Select Calculate
    Then I should see the correct result for 0

Assert Factorial of 5
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 5 and Select Calculate
    Then I should see the correct result for 5

Assert Factorial of 100
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 100 and Select Calculate
    Then I should see the correct result for 100

Assert Factorial of +101
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger +100 and Select Calculate
    Then I should see the correct result for +101

Assert Factorial of 200
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 200 and Select Calculate
    Then I should see the correct result for 200

#THIS TEST FAILS AS BUG WITH VALUES OVER 989
Assert Factorial of 999
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger 999 and Select Calculate
    Then I should see the correct result for 999

#THIS TEST FAILS AS BUG WITH NEGATIVE INTEGERS
Assert Negative Integer Input Type Message
   [Tags]  Frontend Tests
    Given I open a headless browser
    When I navigate to the Factorial website
    And I enter the interger -2 and Select Calculate
    Then I should see the correct result for -2

#THIS TEST FAILS AS BUG WITH PAGE LOCATION MISMATCH
Assert Terms & Conditions Page Navigation
   [Tags]  Frontend Tests
    Given I open a headless browser
     When I navigate to the Factorial website
     And I click on the terms and conditions link
     Then I should land on the terms and conditions page

#THIS TEST FAILS AS BUG WITH PAGE LOCATION MISMATCH
Assert Privacy Page Navigation
   [Tags]  Frontend Tests
    Given I open a headless browser
     When I navigate to the Factorial website
     And I click on the privacy link
     Then I should land on the privacy page

Assert Company Page Navigation
   [Tags]  Frontend Tests
    Given I open a headless browser
     When I navigate to the Factorial website
     And I click on the company footer link
     Then I should land on the company page
