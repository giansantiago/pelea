*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${editprofile_btn}    //button[@class='btn btn-primary btn-block mt-20 mb-10 mat-flat-button mat-button-base ng-star-inserted']
${fname_lbl}    //div[@class='row ml-0 mr-0']/div[1]/h1
${lname_lbl}    //div[@class='row ml-0 mr-0']/div[2]/h1
${uname_lbl}    //div[@class='row ml-0 mr-0']/div[3]/h1
${acctype_lbl}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[1]/h1
${userid_lbl}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[2]/h1
${mobile_lbl}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[3]/h1
${email_lbl}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[4]/h1
${address_lbl}    //div[@class='row mt-19 ml-0 mr-0'][2]/div[1]/h1
${dateadded_lbl}    //div[@class='row mt-19 ml-0 mr-0'][2]/div[2]/h1
${lastlogin_lbl}    //div[@class='row mt-19 ml-0 mr-0'][2]/div[3]/h1

*** Keywords ***
Go to Edit Profile Page
    wait until element is visible    ${editprofile_btn}
    click element    ${editprofile_btn}

Verify Updated Profile
    wait until element contains    ${fname_lbl}    ${EP_FIRSTNAME}
    wait until element contains    ${lname_lbl}    ${EP_LASTNAME}
    wait until element contains    ${uname_lbl}   ${EP_USERNAME}
    wait until element is visible    ${acctype_lbl}
    wait until element is visible    ${userid_lbl}
    wait until element contains    ${mobile_lbl}    ${EP_MOBILE}
    wait until element contains    ${email_lbl}    ${EP_EMAIL}
    wait until element contains    ${address_lbl}    ${EP_ADDRESS}
    wait until element is visible    ${dateadded_lbl}
    wait until element is visible    ${lastlogin_lbl}

Verify Updated Profile 2
    wait until element contains    ${fname_lbl}    ${EP_LASTNAME2}
    wait until element contains    ${lname_lbl}    ${EP_LASTNAME2}
    wait until element contains    ${uname_lbl}   ${EP_USERNAME2}
    wait until element is visible    ${acctype_lbl}
    wait until element is visible    ${userid_lbl}
    wait until element contains    ${mobile_lbl}    ${EP_MOBILE2}
    wait until element contains    ${email_lbl}    ${EP_EMAIL2}
    wait until element contains    ${address_lbl}    ${EP_ADDRESS2}
    wait until element is visible    ${dateadded_lbl}
    wait until element is visible    ${lastlogin_lbl}