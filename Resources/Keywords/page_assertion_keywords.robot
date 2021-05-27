*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../PageObjects/challenge_locators.robot

*** Keywords ***
Assert Results for value 0
    Wait Until Element Contains  ${result_text}  The factorial of ${integer} is: 1

Assert Results for value 0.2
    Wait Until Element Contains  ${result_text}  Please enter an integer

Assert Results for value 5
    Wait Until Element Contains  ${result_text}  The factorial of ${integer} is: 120

Assert Results for value 100
    Wait Until Element Contains  ${result_text}  The factorial of ${integer} is: 9.332621544394415e+157

Assert Results for value limit
    Wait Until Element Contains  ${result_text}  The factorial of ${integer} is: Infinity

Assert Results for String value
    Wait Until Element Contains  ${result_text}  Please enter an integer