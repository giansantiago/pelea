*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/CashIn.robot

*** Keywords ***
Request Cash In With Below Minimum Required Amount
    cashin.verify cashin page
    cashin.click add credits button
    cashin.Verify Add Credits Page
    cashin.click on a payment gateway
    cashin.verify amount & proof submission page
    cashin.enter invalid amount
    cashin.select proof file
    cashin.Verify Send Proof Button is Disabled

Request Cash In With Complete Valid Details
    cashin.clear fields
    cashin.enter valid amount
    cashin.select proof file
    cashin.click send proof button
    cashin.verify successful cashin notification
    cashin.get transaction number
    cashin.click go to my wallet
    cashin.click cashin history
    cashin.Verify Latest Cash In