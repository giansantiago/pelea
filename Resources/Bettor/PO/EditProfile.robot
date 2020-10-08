*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Bettor/InputData.robot


*** Variables ***
${photoselect_btn}    //label[@class='upload-pic text-btn-hover']
${firstname_tb}    //input[@id='firstName']
${lastname_tb}    //input[@id='lastName']
${username_tb}    //input[@id='user_name']
${email_tb}    //input[@id='email']
${mobilenumber_tb}    //input[@id='mobileNumber']
${birthdate_tb}    //input[@name='birthday']    #//input[@class='form-control ng-pristine ng-valid ng-touched']
${save_btn}  //div[@class='flex-align-center']/button/p    #//button[@class='btn btn-primary move-center flex-align-center']//p[@class='cont-body']
${successful_message}    //div[@class='toast-message ng-star-inserted]
${errormessage_div}    //div[@class='toast-message ng-star-inserted]


*** Keywords ***
Verify Edit Profile Page Elements
    wait until element is visible    ${photoselect_btn}
    wait until element is visible    ${firstname_tb}
    wait until element is visible    ${lastname_tb}
    wait until element is visible    ${username_tb}
    wait until element is visible    ${email_tb}
    wait until element is visible    ${mobilenumber_tb}
    wait until element is visible    ${birthdate_tb}
    wait until element is visible    ${save_btn}

Clear Fields
    clear element text    ${firstname_tb}
    clear element text    ${lastname_tb}
    clear element text    ${username_tb}
    clear element text    ${email_tb}
    clear element text    ${mobilenumber_tb}
    clear element text    ${birthdate_tb}

Select Profile Picture
    choose file    ${photoselect_btn}    ${PHOTO}

Enter First Name
    [Arguments]    ${firstname}
    input text    ${firstname_tb}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    input text    ${lastname_tb}    ${lastname}

Enter Username
    [Arguments]    ${username}
    input text    ${username_tb}    ${username}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tb}    ${email}

Enter Mobile Number
    [Arguments]    ${mobile}
    input text    ${mobilenumber_tb}    ${mobile}

Enter Birthdate
  [Arguments]    ${bday}
  input text    ${birthdate_tb}    ${bday}

Click Save Changes Button
    click element    ${save_btn}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until page contains    ${errormessage}

