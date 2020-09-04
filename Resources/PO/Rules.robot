*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${rules_content}    //div[@class='card'] //p[@class='hl-3 fs-20']
${rules_url}    https://dev-sabong-bettor.citrof.com/rules


*** Keywords ***
Verify Page URL
    ${actual_url}    get location
    should be equal    ${actual_url}    ${rules_url}
    #run keyword if    ${actual_url}    ==    ${rules_url}    Verify Rules Page

Verify Rules Page
    wait until element is visible    ${rules_content}
    element should contain    ${rules_content}    RULES OF PLAY

