*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${search_tb}    //div[@class='input-group ml-10']/input
${status_dd}    //div[@class='col-xl-3 col-lg-3 col-md-auto col-sm-9 col-xs-9 all']/div/div/button
${addnewscout_btn}    //button[@class='btn btn-sm btn-primary btn-block new mat-flat-button mat-button-base']

${scout_data} =    Qa Scout
${search_result}    //div[@class='col-xl-12 col-lg-12 col-md-5 col-sm-6 col-xs-12 mt-18'] //span[.//text() = ' QA Scout']



*** Keywords ***
Verify Scouts Page
    wait until element is visible    ${search_tb}
    wait until element is visible    ${status_dd}
    wait until element is visible    ${addnewscout_btn}

Navigate to Add Scout Page
    click element      ${addnewscout_btn}

Search Scout
    input text    ${search_tb}    ${scout_data}

Verify Search Result
    wait until element is visible    ${search_result}

Navigate to Scout Profile
    click element    ${search_result}

Search Newly Added Scout
    input text    ${search_tb}    ${FIRSTNAME2}    ${LASTNAME2}
    press keys    ${search_tb}    ENTER

Verify Search Result For Newly Added Scout
    wait until page contains    ${FIRSTNAME2} ${LASTNAME2}
