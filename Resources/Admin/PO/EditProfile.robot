*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot

*** Variables ***
${fname_tb}    //div[@class='row']/div[1] //input
${lname_tb}    //div[@class='row']/div[2] //input
${uname_tb}    //div[@class='row']/div[3] //input
${email_tbx}    //div[@class='row']/div[4] //input
${mobile_tb}    //div[@class='row']/div[5] //input
${address_tb}    //div[@class='row']/div[6] //input
${fileselect_btn}    //label[@class='btn btn-sm btn-block btn-blue']
${save_btn}    //div[@class='col-xl-auto col-lg-auto col-md-6']/button
${cancel_btn}    //button[@class='btn btn-clear btn-block mat-flat-button mat-button-base']
${errormessage_div}    //div[@class='notif-message ng-star-inserted']/div


*** Keywords ***
Verify Edit Profile Page
    wait until element is visible    ${fname_tb}
    wait until element is visible    ${lname_tb}
    wait until element is visible    ${uname_tb}
    wait until element is visible    ${email_tbx}
    wait until element is visible    ${mobile_tb}
    wait until element is visible    ${address_tb}
    wait until element is visible    ${fileselect_btn}
    wait until element is visible    ${save_btn}

Clear Fields
    clear element text    ${fname_tb}
    clear element text    ${lname_tb}
    clear element text    ${uname_tb}
    clear element text    ${email_tbx}
    clear element text    ${mobile_tb}
    clear element text    ${address_tb}

Enter First Name
    [Arguments]    ${firstname}
    input text    ${fname_tb}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    input text    ${lname_tb}    ${lastname}

Enter User Name
    [Arguments]    ${username}
    input text    ${uname_tb}    ${username}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tbx}    ${email}

Enter Mobile Number
    [Arguments]    ${mobile}
    input text    ${mobile_tb}    ${mobile}

Enter Address
    [Arguments]    ${address}
    input text    ${address_tb}    ${address}

Select Profile Picture
    sleep    1s
    choose file    ${fileselect_btn}    ${PHOTO}

Click Save Button
    click element    ${save_btn}
    #double click element    ${save_btn}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until element is visible    ${errormessage_div}
    element should contain    ${errormessage_div}    ${errormessage}
    sleep    3s

Page Refresh
    reload page