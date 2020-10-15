*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name_lbl}    //div[@class='row ml-0 mr-0']/div[1]/h1
${mobile_lbl2}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[1]/h1
${email_lbl2}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[2]/h1
${dateadded_lbl}    //div[@class='row mt-19 ml-0 mr-0'][1]/div[3]/h1
${editprofile_btn2}    //button[@class='customBttn btn btn-sm btn-block mat-flat-button mat-button-base']
${login_lbl}    //div[@class='row mt-19 ml-0 mr-0'][2]/div[1]/h1
${location_lbl}    //div[@class='row mt-19 ml-0 mr-0'][2]/div[2]/h1

*** Keywords ***
Verify Scout Profile Page
    wait until element is visible    ${name_lbl}
    wait until element is visible    ${mobile_lbl}
    wait until element is visible    ${email_lbl2}
    wait until element is visible    ${dateadded_lbl}
    wait until element is visible    ${editprofile_btn2}
    wait until element is visible    ${login_lbl}
    wait until element is visible    ${location_lbl}

Navigate to Edit Profile Page
    click element    ${editprofile_btn2}

Verify Updated Scout
    wait until element contains    ${name_lbl}    ${FULLNAME}
    wait until element contains    ${mobile_lbl2}    ${MOBILE2}
    wait until element contains    ${email_lbl2}    ${EMAIL2}
