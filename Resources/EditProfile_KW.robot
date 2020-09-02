*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/Profile.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/EditProfile.robot
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot


*** Keywords ***
Go to Edit Profile Page
    topnav.navigate to profile page
    profile.go to edit profile page

Unsuccessful Edit Profile
    [Arguments]    ${firstname}    ${lastname}    ${username}    ${email}    ${mobile}    ${bday}    ${errormessage}
    editprofile.verify edit profile page elements
    editprofile.clear fields
    editprofile.enter first name    ${firstname}
    editprofile.enter last name    ${lastname}
    editprofile.enter username    ${username}
    editprofile.enter email    ${email}
    editprofile.enter mobile number    ${mobile}
    editprofile.enter birthdate    ${bday}
    editprofile.click save changes button
    editprofile.verify error message    ${errormessage}

Successful Edit Profile
    editprofile.verify edit profile page elements
    editprofile.clear fields
    editprofile.enter first name    ${EP_FIRSTNAME}
    editprofile.enter last name    ${EP_LASTNAME}
    editprofile.enter username    ${EP_USERNAME}
    editprofile.enter email    ${EP_EMAIL}
    editprofile.enter mobile number    ${EP_MOBILE}
    editprofile.enter birthdate    ${EP_BIRTHDATE}
    editprofile.click save changes button
    editprofile.click save changes button
    profile.verify updated profile

Successful Edit Profile 2
    profile.go to edit profile page
    editprofile.verify edit profile page elements
    editprofile.enter first name    ${EP_FIRSTNAME2}
    editprofile.enter last name    ${EP_LASTNAME2}
    editprofile.enter username    ${EP_USERNAME2}
    editprofile.enter email    ${EP_EMAIL2}
    editprofile.enter mobile number    ${EP_MOBILE2}
    editprofile.enter birthdate    ${EP_BIRTHDATE2}
    editprofile.click save changes button
    editprofile.click save changes button
    profile.verify updated profile 2