*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page_title3}    //h1[@class='main-label']
${addarena_btn}    //button[@class='btn btn-sm btn-primary float-right mat-flat-button mat-button-base']
${search_tb2}    //input[@class='form-control mb-10 box-size ng-untouched ng-pristine ng-valid']
${status_dd}    //button[@class='custom-dropdown btn btn-white btn-drop-down btn-block zindex-10 mat-flat-button mat-button-base']

*** Keywords ***
Verify Arenas Page
    wait until element is visible    ${page_title3}
    wait until element is visible    ${addarena_btn}
    wait until element is visible    ${search_tb2}
    wait until element is visible    ${status_dd}