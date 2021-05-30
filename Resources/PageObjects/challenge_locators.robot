*** Settings ***
Documentation    URLS and Locators

*** Variables ***
${home_url}     http://qainterview.pythonanywhere.com
${terms_url}    http://qainterview.pythonanywhere.com/terms
${privacy_url}  http://qainterview.pythonanywhere.com/privacy
${company_url}  https://qxf2.com/?utm_source=qa-interview&utm_medium=click&utm_campaign=From%20QA%20Interview

${h1_title}  xpath=//*[contains(@class,"container toppy")]/div/div/h1
${integer_textfield}  xpath=//*[@id="number"]
${calculate_button}   xpath=//*[@id="getFactorial"]
${result_text}        xpath=//*[@id="resultDiv"]
${terms_and_conditions_link_button}   xpath=//*[contains(text(),"Terms and Conditions")]
${privacy_link_button}   xpath=//*[contains(text(),"Privacy")]
${company_link_button}   xpath=//*[contains(text(),"Qxf2 Services")]
