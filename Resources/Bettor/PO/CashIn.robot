*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Library    String

*** Variables ***
#cashin
${addcredits_btn}    //button[@class='btn btn-primary move-center flex-align-center h-56']
${cashinhistory_lbl}    //p[@class='cont-title ng-star-inserted']
${availablecredits_lbl}    //p[@class='hl-1 text-center']
${latestcashin}    //div[@class='history text-btn-hover ng-star-inserted'] [1]

#Add credits
${gcash_btn}    //p[.//text() = 'GCash']
#${gcash_btn}    //p[@class='cont-title ml-17']//text() = 'GCash'
#${paymaya_btn}    //p[@class='cont-title ml-17']//text() = 'Paymaya'
#${cebuana_btn}    //p[@class='cont-title ml-17']//text() = 'Cebuana'
#${paypal_btn}    //p[@class='cont-title ml-17']//text() = 'Paypal'
#${bank_btn}    //p[@class='cont-title ml-17']//text() = 'Bank Transfer'

#Amount & Proof Submission
${amount_tb}    //input[@id='amount']
${proof_filesel}    //input[@id='fileDropRef']
${proof_file}    C:/robot-scripts/sabongeros/Data/Bettor/gcash receipt.png
${sendproof_btn}    //button[@class='btn btn-primary move-center']


#Notification Modal
#Cash-in request has been submitted
#An email update will be sent once your request is validated by the admin.
${transactionnum_lbl}    //p[@class='cont-sub']
${gotomywallet_btn}    //div[@class='btn-section flex-align-center mb-8 pl-10 pr-10'] //button

#Cash-In History
${transactionnum_lbl2}    //p[@class='cont-sub text-center']
${paymentgateway_lbl}    //p[@class='cont-sub mt-24']
${amount_lbl}    //p[@class='cont-sub mt-15']
${proof_img}    //img[@class='move-center']

*** Keywords ***
Verify CashIn Page
    wait until element is visible    ${addcredits_btn}
    wait until element is visible    ${cashinhistory_lbl}
    wait until element is visible    ${availablecredits_lbl}
    #wait until element is visible    ${latestcashin}

Click Add Credits Button
    click element    ${addcredits_btn}

#----------------------
Verify Add Credits Page
    wait until page contains    Add credits
    wait until element is visible    ${gcash_btn}
    #wait until element is visible    ${paymaya_btn}
    #wait until element is visible    ${cebuana_btn}
    #wait until element is visible    ${paypal_btn}
    #wait until element is visible    ${bank_btn}

Click on a payment gateway
    click element    ${gcash_btn}

#----------------------

Verify Amount & Proof Submission Page
    wait until element is visible    ${amount_tb}
    #wait until element is visible    ${proof_filesel}
    wait until element is visible    ${sendproof_btn}

Enter Invalid Amount
    input text    ${amount_tb}    99.99

Enter Valid Amount
    #get value from user    ${amount_tb}
    input text    ${amount_tb}    1000

Select Proof File
    choose file    ${proof_filesel}    ${proof_file}

Click Send Proof Button
    click element    ${sendproof_btn}

Verify Send Proof Button is Disabled
    element should be disabled    ${sendproof_btn}

Clear fields
    clear element text    ${amount_tb}


#----------------------


Verify Successful CashIn Notification
    wait until page contains    Cash-in request has been submitted
    wait until page contains    An email update will be sent once your request is validated by the admin.
    wait until element is visible    ${transactionnum_lbl}
    wait until element is visible    ${gotomywallet_btn}

Get Transaction Number
    ${TRANSACTION_NUM} =    get text    ${transactionnum_lbl}
    set suite variable    ${TRANSACTION_NUM}
    #${transactionnum2}=    fetch from right    ${transactionnum}    '#'


Click Go To My Wallet
    click element    ${gotomywallet_btn}


#----------------------


Click CashIn History
    wait until element is visible    ${latestcashin}
    click element    ${latestcashin}

Verify Latest Cash In
    wait until element is visible    ${transactionnum_lbl2}
    wait until element is visible    ${paymentgateway_lbl}
    wait until element is visible    ${amount_lbl}
    wait until element is visible    ${proof_img}
    element should contain    ${transactionnum_lbl2}    ${TRANSACTION_NUM}
