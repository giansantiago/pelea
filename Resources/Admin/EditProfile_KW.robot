*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Profile.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/EditProfile.robot
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot


*** Keywords ***
Go to Edit Profile Page
    profile.go to edit profile page

Unsuccessful Edit Profile
    [Arguments]    ${firstname}    ${lastname}    ${username}    ${email}    ${mobile}    ${address}    ${errormessage}
    editprofile.verify edit profile page
    editprofile.clear fields
    editprofile.enter first name    ${firstname}
    editprofile.enter last name    ${lastname}
    editprofile.enter username    ${username}
    editprofile.enter email    ${email}
    editprofile.enter mobile number    ${mobile}
    editprofile.enter address    ${address}
    editprofile.click save button
    editprofile.verify error message    ${errormessage}


Successful Edit Profile
    editprofile.page refresh
    editprofile.verify edit profile page
    editprofile.clear fields
    editprofile.enter first name    ${EP_FIRSTNAME}
    editprofile.enter last name    ${EP_LASTNAME}
    editprofile.enter username    ${EP_USERNAME}
    editprofile.enter email    ${EP_EMAIL}
    editprofile.enter mobile number    ${EP_MOBILE}
    editprofile.enter address    ${EP_ADDRESS}
    editprofile.select profile picture
    sleep    3s
    editprofile.click save button
    profile.verify updated profile


Successful Edit Profile 2
    profile.go to edit profile page
    editprofile.verify edit profile page
    editprofile.clear fields
    editprofile.enter first name    ${EP_FIRSTNAME2}
    editprofile.enter last name    ${EP_LASTNAME2}
    editprofile.enter username    ${EP_USERNAME2}
    editprofile.enter email    ${EP_EMAIL2}
    editprofile.enter mobile number    ${EP_MOBILE2}
    editprofile.enter address    ${EP_ADDRESS2}
    editprofile.select profile picture
    editprofile.click save button
    profile.verify updated profile 2