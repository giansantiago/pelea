*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${page_title2}    //h3[@class='main-label mb-3']
${finishedevents_btn}    //button[@class='button1 btn btn-sm btn-block mat-flat-button mat-button-base']
${search_tb}    //input[@class='form-control mb-10 box-size']
${date_picker2}    //button[@class='btn btn-white btn-drop-down btn-block custom-dropdown mat-flat-button mat-button-base']
${arena_dd}    //button[@class='custom-dropdown btn btn-white btn-drop-down btn-block zindex-10 mat-flat-button mat-button-base']

*** Keywords ***
Verify Event Fights Page
    wait until element is visible    ${page_title2}
    wait until element is visible    ${finishedevents_btn}
    wait until element is visible    ${search_tb}
    wait until element is visible    ${date_picker2}
    wait until element is visible    ${arena_dd}