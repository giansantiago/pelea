*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Resource    C:/robot-scripts/sabongeros/Resources/CashOut_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot
Suite Setup    common_kw.Start Cash Out Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Unsuccessful Cash Out - Blank Amount
    cashout_kw.submit blank amount

#Unsuccessful Cash Out - Below Minimum Required Amount
#    cashout_kw.submit below minimum required amount

#Unsuccessful Cash Out - Higher Amount Than Actual Credits
#    cashout_kw.submit amount higher than current available credits

Unsuccessful Cash Out - Blank Account Details
    cashout_kw.submit valid amount
    cashout_kw.submit blank account details

Unsuccessful Cash Out - Blank ID Type
    cashout_kw.submit valid account details
    cashout_kw.submit blank account details

Unsuccessful Cash Out - Blank Proof
    cashout_kw.submit blank proof

Successful Cash Out
    cashout_kw.Submit Valid Proof