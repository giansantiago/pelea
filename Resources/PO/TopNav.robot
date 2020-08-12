*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${profile_menu} =    //div[@class='main text-btn-hover flex-align-center mat-menu-trigger']

*** Keywords ***
Verify Successful Login
    wait until element is visible    ${profile_menu}