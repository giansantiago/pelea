*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Login_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/EditProfile_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/LeftNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Scouts_KW.robot

*** Keywords ***
Start Login Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window

Start Dashboard Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login

Start Change Password Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login
    topnav.click change password

Start Edit Profile Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login
    topnav.click account settings
    editprofile_kw.go to edit profile page

Start Add New Scout Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login
    leftnav.navigate to scouts page
    scouts_kw.go to add scout page

Start Edit Scout Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login
    leftnav.navigate to scouts page
    scouts_kw.search arena scout
    scouts_kw.go to scout profile
    scouts_kw.go to edit profile

End Suite
        close browser