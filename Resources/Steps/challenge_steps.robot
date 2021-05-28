*** Settings ***
Documentation    Steps for Tests
Resource  ../PageObjects/challenge_locators.robot
Resource  ../Keywords/page_assertion_keywords.robot
Library    SeleniumLibrary
Library    Collections
Library    RequestsLibrary
Library    JSONLibrary

*** Keywords ***
#FRONTEND STEPS

I open a browser
    Open Browser  about:blank   chrome

I open a headless browser
    Open Browser  about:blank   headlesschrome

I navigate to the Factorial website
    Go To  ${home_url}
    Wait Until Element Contains  ${h1_title}  The greatest factorial calculator!

I enter the interger ${integer} and Select Calculate
    Input text  ${integer_textfield}  ${integer}
    Click Button  ${calculate_button}
    Set Global Variable  ${integer}
    log to console  ${integer}

I should see the correct result for ${integer}
    Run Keyword If  ${integer}== abc         Assert Results for invalid value
    ...   ELSE IF   ${integer}== -2          Assert Results for invalid value
    ...   ELSE IF   ${integer}== 0.2         Assert Results for invalid value
    ...   ELSE IF   ${integer}== 0           Assert Results for value 0
    ...   ELSE IF   ${integer}== 5           Assert Results for value 5
    ...   ELSE IF   ${integer}== 100         Assert Results for value 100
    ...   ELSE IF   ${integer}>= 171         Assert Results for value limit

I click on the terms and conditions link
    Click Element  ${terms_and_conditions_link_button}

I should land on the terms and conditions page
    Wait Until Location Is    ${terms_url}
    Wait Until Page Contains  This is the terms and conditions document. We are not yet ready with it. Stay tuned!

I click on the privacy link
    Click Element  ${privacy_link_button}

I should land on the privacy page
    Wait Until Location Is    ${privacy_url}
    Wait Until Page Contains  This is the privacy document. We are not yet ready with it. Stay tuned!

I click on the company footer link
    Click Element  ${company_link_button}

I should land on the company page
    Wait Until Location Is    ${company_url}
    Wait Until Page Contains  QA for startups

#API STEPS

I create a session on API for ${integer}
    Create Session  alias=AddData   url=${home_url}
    ${body}=   Create dictionary  number=${integer}
    ${response}=    POST On Session  AddData  url=/factorial  data=${body}
    ${status_code}    Convert to string   ${response.status_code}
    Set Global Variable    ${status_code}
    ${responseJSON}=  Set Variable  ${response.json()}
    Set Global Variable  ${responseJSON}

I should see a valid response with an answer
    Should be equal      ${status_code}    200
    Log to console       ${status_code}
    should not be empty  ${responseJSON}
    Log to console       ${responseJSON}
