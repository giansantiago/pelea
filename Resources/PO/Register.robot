*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${terms_btn}    //div[@class='btn-section flex-align-center mb-15']/button
#${signup_lbl}    //div[@class='card ng-untouched ng-pristine ng-invalid']/p[@class='hl-3']
${firstname_tb}    //input[@id='firstName']
${lastname_tb}    //input[@id='lastName']
${username_tb}    //input[@id='user_name']
${email_tb}    //input[@id='email']
${mobile_tb}    //input[@id='mobileNumber']
${birthday_tb}    //input[@name='birthday']
${password_tb}    //input[@id='password']
${passwordconfirm_tb}    //input[@id='passwordConfirm']
${next_btn}    //button[@class='btn btn-primary move-center']
${error_message_div}    //div[@class='toast-message ng-star-inserted']
${otp_tb1}    //input[@id='input1']
${otp_tb2}    //input[@id='input2']
${otp_tb3}    //input[@id='input3']
${otp_tb4}    //input[@id='input4']
${otp_tb5}    //input[@id='input5']
${otp_tb6}    //input[@id='input6']
${otp_lbl}    //p[@class='hl-3']
${otp_btn}    //button[@class='btn btn-primary move-center']


*** Keywords ***
Accept Terms and Conditions
    wait until page contains element    ${terms_btn}
    click element    ${terms_btn}

Verify Registration Page
    #wait until element contains   ${signup_lbl}    Sign up
    wait until page contains element    ${firstname_tb}
    wait until page contains element    ${lastname_tb}
    wait until page contains element    ${username_tb}
    wait until page contains element    ${email_tb}
    wait until page contains element    ${mobile_tb}
    wait until page contains element    ${birthday_tb}
    wait until page contains element    ${password_tb}
    wait until page contains element    ${passwordconfirm_tb}
    wait until page contains element    ${next_btn}

Clear Registration Fields
    clear element text    ${firstname_tb}
    clear element text    ${lastname_tb}
    clear element text    ${username_tb}
    clear element text    ${email_tb}
    clear element text    ${mobile_tb}
    clear element text    ${birthday_tb}
    clear element text    ${password_tb}
    clear element text    ${passwordconfirm_tb}

Enter First Name
    [Arguments]    ${fname}
    input text    ${firstname_tb}    ${fname}

Enter Last Name
    [Arguments]    ${lname}
    input text    ${lastname_tb}    ${lname}

Enter Username
    [Arguments]    ${uname}
    input text    ${username_tb}    ${uname}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tb}    ${email}

Enter Mobile Number
    [Arguments]    ${mobile}
    input text    ${mobile_tb}    ${mobile}

Enter Birthdate
    [Arguments]    ${bday}
    input text    ${birthday_tb}    ${bday}

Enter Password
    [Arguments]    ${pass}
    input text    ${password_tb}    ${pass}

Enter Password Confirmation
    [Arguments]    ${pass2}
    input text    ${passwordconfirm_tb}    ${pass2}

Click Proceed To Next Steps
    click element    ${next_btn}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until element is visible    ${error_message_div}
    wait Until Element Contains    ${error_message_div}    ${errormessage}

Verify OTP Page
    wait until element contains    ${otp_lbl}    One-time pin code
    wait until page contains element    ${otp_tb1}
    wait until page contains element    ${otp_tb2}
    wait until page contains element    ${otp_tb3}
    wait until page contains element    ${otp_tb4}
    wait until page contains element    ${otp_tb5}
    wait until page contains element    ${otp_tb6}



Enter OTP
    input text    ${otp_tb1}    0
    input text    ${otp_tb2}    0
    input text    ${otp_tb3}    0
    input text    ${otp_tb4}    0
    input text    ${otp_tb5}    0
    input text    ${otp_tb6}    0

Click Submit OTP
    click element    ${otp_btn}