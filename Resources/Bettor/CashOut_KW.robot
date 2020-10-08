*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/CashOut.robot

*** Keywords ***
Submit Blank Amount
    cashout.verify cash out page
    cashout.Click Request Cash Out Button
    cashout.Verify Amount Submission Page
    #cashout.Clear Amount Field
    sleep    2s
    cashout.verify disabled next button


#Submit Below Minimum Required Amount
#    cashout.enter below minimum requred amount
#    cashout.verify disabled next button

#Submit Amount Higher Than Current Available Credits
#    cashout.Clear Amount Field
#    cashout.enter amount higher than total available credits
#    cashout.verify disabled next button

Submit Valid Amount
    #cashout.Clear Amount Field
    cashout.enter valid amount
    cashout.click next step button
    cashout.Click a Payment Gateway

Submit Blank Account Details
    cashout.Click Continue Button
    cashout.Verify Error Message for Blank Account Detail

Submit Valid Account Details
    cashout.enter account details
    cashout.click continue button

Submit Blank ID Type
    cashout.verify upload identification page
    cashout.click continue button 2
    cashout.verify error message for blank id type

Submit Blank Proof
    cashout.select id type
    cashout.click continue button 2
    cashout.verify error message for blank proof

Submit Valid Proof
    cashout.select front view
    cashout.select back view
    cashout.select proof
    cashout.click continue button 2
    cashout.click confirm button
    cashout.verify successful cash out notification
    cashout.Get Transaction Details
    cashout.click go to my wallet button
    cashout.Click Cash Out History
    cashout.verify latest cash out