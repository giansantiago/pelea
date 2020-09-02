*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${editprofile_btn}    //button[@class='btn btn-primary move-center flex-align-center'] /p
${name_lbl}    //div[@class='cold-md-12 text-center text-md-left w-100-per mt-15']/p
${username_lbl}    //div[@class='row details']/div[1] //p[@class='cont-body mt-3']
${email_lbl}    //div[@class='row details']/div[2] //p[@class='cont-body mt-3']
${mobilenumber_lbl}    //div[@class='row details']/div[3] //p[@class='cont-body mt-3']
${birthdate_lbl}    //div[@class='row details']/div[4] //p[@class='cont-body mt-3']

*** Keywords ***
Go to Edit Profile Page
    wait until element is visible    ${editprofile_btn}
    click element    ${editprofile_btn}

Verify Updated Profile
    wait until element contains    ${name_lbl}    ${EP_FIRSTNAME} ${EP_LASTNAME}
    wait until element contains    ${username_lbl}   ${EP_USERNAME}
    wait until element contains    ${email_lbl}    ${EP_EMAIL}
    #wait until element contains    ${mobilenumber_lbl}    ${EP_MOBILE}
    wait until element contains    ${birthdate_lbl}    ${EP_BIRTHDATE}

Verify Updated Profile 2
    wait until element contains    ${name_lbl}    ${EP_FIRSTNAME2} ${EP_LASTNAME2}
    wait until element contains    ${username_lbl}   ${EP_USERNAME2}
    wait until element contains    ${email_lbl}    ${EP_EMAIL2}
    #wait until element contains    ${mobilenumber_lbl}    ${EP_MOBILE2}
    wait until element contains    ${birthdate_lbl}    ${EP_BIRTHDATE2}