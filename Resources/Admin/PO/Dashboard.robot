*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${cashin_btn}    //div[@class='row mt-30'] //div[.//text() = 'Cash-in Requests']
${cashout_btn}    //div[@class='row mt-30'] //div[.//text() = 'Cash-out requests']
${events_btn}    //div[@class='row mt-30'] //div[.//text() = 'Event Fights for Today']
${arenas_btn}    //div[@class='row mt-30'] //div[.//text() = 'Current Live Arenas']

*** Keywords ***
Verify Dashboard Page
    wait until element is visible    ${cashin_btn}
    wait until element is visible    ${cashout_btn}
    wait until element is visible    ${events_btn}
    wait until element is visible    ${arenas_btn}

Click Cash-in Button
    click element    ${cashin_btn}

Click Cash-out Button
    click element    ${cashout_btn}

Click Events Button
    click element    ${events_btn}

Click Arenas Button
    click element    ${arenas_btn}

