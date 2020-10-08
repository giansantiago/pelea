*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page_title}    //h3[@class='main-label mb-3 fw-600']
${transactionhistory_btn}    //button[@class='button1 btn btn-sm btn-block mat-flat-button mat-button-base']
${date_picker}    //button[@class='btn btn-white btn-drop-down btn-block mat-flat-button mat-button-base']
${paymentgateway_dd2}    //mat-select[@id='mat-select-2']
${clearfilter_btn}    //button[@class='btn btn-sm btn-clear mat-flat-button mat-button-base']

*** Keywords ***
Verify Cash-Out Requests Page
    wait until element is visible    ${page_title}
    wait until element is visible    ${transactionhistory_btn}
    wait until element is visible    ${date_picker}
    wait until element is visible    ${paymentgateway_dd2}
    wait until element is visible    ${clearfilter_btn}