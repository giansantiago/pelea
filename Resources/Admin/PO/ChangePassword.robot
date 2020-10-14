*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${newpassword_tb}    //input[@formcontrolname='pass']
${confirmpassword_tb}    //input[@formcontrolname='cPass']
${save_btn}    //button[@type='submit']
${errormessage_div}    //div[@class='alert alert-danger ng-star-inserted']
${successmessage_div}    //div[@class='alert alert-success ng-star-inserted']
${successmessage}    Password successfully changed.

*** Keywords ***
Verify Change Password Page
    wait until element is visible    ${newpassword_tb}
    wait until element is visible    ${confirmpassword_tb}
    wait until element is visible    ${save_btn}

Enter New Password
    [Arguments]    ${newpass}
    input text    ${newpassword_tb}    ${newpass}

Enter Confirm Password
    [Arguments]    ${confirmpass}
    input text    ${confirmpassword_tb}    ${confirmpass}

Click Save Button
    click element    ${save_btn}

Clear Fields
    clear element text    ${newpassword_tb}
    clear element text    ${confirmpassword_tb}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until element is visible    ${errormessage_div}
    wait until element contains    ${errormessage_div}    ${errormessage}

Verify Successful Notification
    wait until element is visible    ${successmessage_div}
    wait until element contains    ${successmessage_div}    ${successmessage}

Page Refresh
    reload page

