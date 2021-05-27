*** Settings ***
Documentation    Suite description
Resource  ../PageObjects/challenge_locators.robot
Resource  ../Keywords/page_assertion_keywords.robot
Library  SeleniumLibrary

*** Keywords ***

I open a browser
    Open Browser  about:blank   chrome

I navigate to the Factorial website
    Go To  http://qainterview.pythonanywhere.com/
    Wait Until Element Contains  ${h1_title}  The greatest factorial calculator!

I enter the interger ${integer} and Select Calculate
    Input text  ${integer_textfield}  ${integer}
    Click Button  ${calculate_button}
    Set Global Variable  ${integer}
    log to console  ${integer}

I should see the correct result for ${integer}
    Run Keyword If  ${integer}== 'abc'        Assert Results for String value
    ...   ELSE IF   ${integer}== 0.2          Assert Results for value 0.2
    ...   ELSE IF   ${integer}== 0            Assert Results for value 0
    ...   ELSE IF   ${integer}== 5            Assert Results for value 5
    ...   ELSE IF   ${integer}== 100          Assert Results for value 100
    ...   ELSE IF   ${integer}<= 171          Assert Results for value limit

I create a session on API
    [arguments]  ${number}
    ${base_url}  http://qainterview.pythonanywhere.com/factorial
    Create Session  alias=FetchData   url=${base_url}   headers=${headers}    auth=${auth}
    ${response}=    Get On Session  FetchData  url=factorial${number}
    ${status_code}    Convert to string   ${response.status_code}
    Should be equal    ${status_code}    200
    ${responseJSON}=  Set Variable  ${response.json()}
    Set Suite Variable  ${responseJSON}




