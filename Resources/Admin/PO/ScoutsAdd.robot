*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot

*** Variables ***
${fname_tb2}    //div[@class='customCard view-record']/form/div[1]/div[1] //input
${lname_tb2}    //div[@class='customCard view-record']/form/div[1]/div[2] //input
${email_tb2}    //div[@class='customCard view-record']/form/div[2]/div[1] //input
${mobile_tb2}    //div[@class='customCard view-record']/form/div[2]/div[2] //input
${username_tb2}    //div[@class='customCard view-record']/form/div[3]/div[1] //input
${password_tb2}    //div[@class='customCard view-record']/form/div[3]/div[2] //input

${choosefile_btn}    //button[@class='customBttn btn btn-sm btn-block mat-flat-button mat-button-base']
${add_btn}    //button[@class='btn btn-primary btn-block mat-flat-button mat-button-base ng-star-inserted']

${search_tb2}    //div[@class='input-group ml-10']/input


*** Keywords ***
Verify Add Scout Page
    wait until element is visible    ${fname_tb2}
    wait until element is visible    ${lname_tb2}
    wait until element is visible    ${email_tb2}
    wait until element is visible    ${mobile_tb2}
    wait until element is visible    ${username_tb2}
    wait until element is visible    ${password_tb2}
    wait until element is visible    ${choosefile_btn}
    wait until element is visible    ${add_btn}

Enter First Name
    [Arguments]    ${firstname}
    input text    ${fname_tb2}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    input text    ${lname_tb2}    ${lastname}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tb2}    ${email}

Enter Mobile
    [Arguments]    ${mobile}
    input text    ${mobile_tb2}    ${mobile}

Enter Username
    [Arguments]    ${username}
    input text    ${username_tb2}    ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${password_tb2}    ${password}

Select Profile Photo
    choose file    ${choosefile_btn}    ${PHOTO}

Click Add Button
    click element    ${add_btn}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until page contains    ${errormessage}


Clear fields
    clear element text    ${fname_tb2}
    clear element text    ${lname_tb2}
    clear element text    ${email_tb2}
    clear element text     ${mobile_tb2}
    clear element text    ${username_tb2}
    clear element text    ${password_tb2}

Page Refresh
    reload page

Enter Valid First Name
    ${firstname} =    FakerLibrary.First Name
    input text    ${fname_tb2}    ${firstname}
    ${FIRSTNAME2} =   get value    ${fname_tb2}
    set suite variable   ${FIRSTNAME2}


Enter Valid Last Name
    ${lastname} =    FakerLibrary.Last Name
    input text    ${lname_tb2}    ${lastname}
    ${LASTNAME2} =   get value    ${lname_tb2}
    set suite variable   ${LASTNAME2}

Enter Valid Email
    ${fakeremail} =    FakerLibrary.Word
    ${fakeremail2} =    FakerLibrary.Random Number    digits=4
    ${email} =  catenate  SEPARATOR=    ${fakeremail}  ${fakeremail2}    @gmail.com
    input text    ${email_tb2}    ${email}
    ${EMAIL2} =   get text    ${email_tb2}
    set suite variable   ${EMAIL2}

Enter Valid Mobile
    ${mobile} =    FakerLibrary.Phone Number
    input text    ${mobile_tb2}    ${mobile}
    ${MOBILE2} =   get text    ${mobile_tb2}
    set suite variable   ${MOBILE2}

Enter Valid Username
    ${username} =    FakerLibrary.User Name
    input text    ${username_tb2}    ${username}
    ${USERNAME2} =   get text    ${username_tb2}
    set suite variable   ${USERNAME2}

Enter Valid Password
    ${password} =    FakerLibrary.Password
    input text    ${password_tb2}    ${password}

