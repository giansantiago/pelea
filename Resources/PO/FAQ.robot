*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${faq_content}    //div[@class='col-md-8 offset-md-2'] //p[@class='hl-3 fs-20']
${faq_url}    https://dev-sabong-bettor.citrof.com/frequently-asked-questions


*** Keywords ***
Verify Page URL
    ${actual_url}    get location
    should be equal    ${actual_url}    ${faq_url}
    #run keyword if    ${actual_url}    ==    ${rules_url}    Verify Rules Page

Verify Rules Page
    wait until element is visible    ${faq_content}
    element should contain    ${faq_content}    Frequently Asked Questions
