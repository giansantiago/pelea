*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${changepassword_btn}  //div[@class='card p-20 mt-20 text-btn-hover']

*** Keywords ***
Navigate to Change Password Page
    wait until element is visible    ${changepassword_btn}
    click element    ${changepassword_btn}