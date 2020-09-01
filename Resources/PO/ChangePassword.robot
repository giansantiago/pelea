*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot

*** Variables ***
${newpassword_tb}  //input[@id='password']
${confirmpassword_tb}  //input[@id='passwordConfirm']
${savechanges_btn}  //button[@class='btn btn-primary move-center flex-align-center']
${newpassword_errormessage_div}    //div[@class='form-validator ng-star-inserted'] /p[0]
${confirmpassword_errormessage_div}     //div[@class='form-validator ng-star-inserted'] /p[1]
${successful_notification}    //div[@class='card-holder flex-align-center']
#//p[@class='cont-title pl-15 pr-15']
${close_btn}    //svg[@class='text-btn-hover']

*** Keywords ***
Enter New Password
    [Arguments]    ${newpassword}
    wait until element is visible    ${newpassword_tb}
    input text    ${newpassword_tb}    ${newpassword}

Enter Confirm Password
    [Arguments]    ${confirmpassword}
    wait until element is visible    ${confirmpassword_tb}
    input text    ${confirmpassword_tb}    ${confirmpassword}

Click Save Changes Button
    wait until element is visible    ${savechanges_btn}
    click element    ${savechanges_btn}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until page contains    ${errormessage}

Clear Password Fields
    clear element text    ${newpassword_tb}
    clear element text    ${confirmpassword_tb}

Verify Successful Notification
    wait until element is visible    ${successful_notification}
    wait until element contains    ${successful_notification}    Password Changed
    press keys    none    ESC
    sleep    2s