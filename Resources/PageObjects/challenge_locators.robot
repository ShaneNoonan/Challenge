*** Settings ***
Documentation    Suite description

*** Variables ***
${h1_title}  xpath=//*[contains(@class,"container toppy")]/div/div/h1
${integer_textfield}  xpath=//*[@id="number"]
${calculate_button}   xpath=//*[@id="getFactorial"]
${result_text}        xpath=//*[@id="resultDiv"]
${terms_and_conditions_link_button}   xpath=//*[contains(text(),"Terms and Conditions")]
${privacy_link_button}   xpath=//*[contains(text(),"Privacy")]
${company_link_button}   xpath=//*[contains(text(),"Qxf2 Services")]