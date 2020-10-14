*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/LeftNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Scouts.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/ScoutsProfile.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/ScoutsEdit.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/ScoutsAdd.robot
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot


*** Keywords ***
Search Arena Scout
    scouts.verify scouts page
    scouts.search scout
    scouts.verify search result

Go To Add Scout Page
    scouts.verify scouts page
    scouts.navigate to add scout page

Go To Scout Profile
    scouts.navigate to scout profile
    scoutsprofile.verify scout profile page

Go To Edit Profile
    scoutsprofile.navigate to edit profile page
    #scoutsedit.verify edit profile page

Unsuccessful Add New Scout
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${mobile}    ${username}    ${password}    ${errormessage}
    scoutsadd.enter first name    ${firstname}
    scoutsadd.enter last name    ${lastname}
    scoutsadd.enter email    ${email}
    scoutsadd.enter mobile    ${mobile}
    scoutsadd.enter username    ${username}
    scoutsadd.enter password    ${password}
    scoutsadd.click add button
    scoutsadd.verify error message    ${errormessage}

Successful Add New Scout
    scoutsadd.enter valid first name
    scoutsadd.enter valid last name
    scoutsadd.enter valid email
    scoutsadd.enter valid mobile
    scoutsadd.enter valid username
    scoutsadd.enter valid password
    scoutsadd.select profile photo
    scoutsadd.click add button
    scouts.verify scouts page
    scouts.search newly added scout
    scouts.verify search result for newly added scout

Unsuccessful Edit Scout
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${mobile}    ${username}    ${password}    ${errormessage}
    scoutsedit.verify edit profile page
    scoutsedit.clear fields
    scoutsedit.enter first name    ${firstname}
    scoutsedit.enter last name    ${lastname}
    scoutsedit.enter email    ${email}
    scoutsedit.enter mobile    ${mobile}
    scoutsedit.enter username    ${username}
    scoutsedit.enter password    ${password}
    scoutsedit.click update button
    scoutsedit.verify error message    ${errormessage}
    scoutsedit.page refresh