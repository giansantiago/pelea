*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Library    String

*** Variables ***

${requestco_btn}    //button[@class='btn btn-primary move-center flex-align-center h-56']
${cohistory_lbl}    //p[@class='cont-title ng-star-inserted']
${availablecredits_lbl}    //p[@class='hl-1 text-center']
${latestco}    //div[@class='history text-btn-hover ng-star-inserted'] [1]


${enteramount_tb}   //div[@class='flex-align-center'] //input[@class='text-center move-center ng-pristine ng-valid ng-touched']
${onek_btn}    //p[.//text() = '1,000']
${nextstep_btn}    //button[@class='btn btn-primary move-center']


${gcash_btn}    //p[.//text() = 'GCash']


${accountnum_tb}    //input[@class='form-control']
${continue_btn}    //button[@class='btn btn-primary move-center']
${blank_accountnum_error}    //div[@class='toast-error ngx-toastr ng-trigger ng-trigger-flyInOut']


${passport_lbl}    //span[.//text() = 'Passport']
${id_ddlist}        //div[@class='mt-20 custom-mat-select'] //mat-select[@id='mat-select-0']    #//span[.//text() = 'Select an ID type']
${frontview_filesel}    //div[@class='proof mt-24 mb-24'] //input
${backview_filesel}    //div[@class='proof mb-24'] //input
${holding_filesel}    //div[@class='proof'] //input
${continue_btn}    //button[@class='btn btn-primary move-center']
${blank_idtype_error}    //div[@class='toast-message ng-star-inserted']
${blank_image_error}    //div[@class='toast-error ngx-toastr ng-trigger ng-trigger-flyInOut']


${continue_btn2}    //button[@class='btn btn-primary move-center']
${amount_lbl}    //p[@class='hl-2 text-center']
${outlet_lbl}    //div[@class='t-info flex-align-center'] //p[@class='cont-sub move-right']
${accountdetail_lbl}    //div[@class='t-info flex-align-center ng-star-inserted'] //p[@class='cont-sub move-right']
${confirm_btn}    //div[@class='flex-align-center mb-15 pl-17 pr-17'] //button


${transactionnum_lbl}    //div[@class='transaction move-center'] //p[@class='cont-sub']
${gotomywallet_btn}    //div[@class='btn-section flex-align-center mb-8 pl-10 pr-10'] //button


${transactionnum_lbl2}    //div[@class='cont-sub text-center mt-26']
${outlet_lbl2}    //div[@class='t-info flex-align-center'] //p[@class='cont-sub move-right']
${accountdetail_lbl2}    //div[@class='t-info flex-align-center ng-star-inserted'] //p[@class='cont-sub move-right']

*** Keywords ***
Verify Cash Out Page
    wait until element is visible    ${requestco_btn}
    wait until element is visible    ${cohistory_lbl}
    wait until element is visible    ${availablecredits_lbl}
Click Request Cash Out Button
    click element    ${requestco_btn}


Verify Amount Submission Page
    #wait until element is visible    ${enteramount_tb}
    wait until element is visible    ${onek_btn}
    wait until element is visible    ${nextstep_btn}
Clear Amount Field
    clear element text    ${enteramount_tb}
Enter Below Minimum Requred Amount
    input text    ${enteramount_tb}    199.99
Enter Amount Higher than Total Available Credits
    input text    ${enteramount_tb}    999999999999
Verify Disabled Next Button
    element should be disabled   ${nextstep_btn}
Enter Valid Amount
    click element    ${onek_btn}
Click Next Step Button
    click element    ${nextstep_btn}


Click a Payment Gateway
    wait until element is visible    ${gcash_btn}
    click element    ${gcash_btn}

Enter Account Details
    wait until element is visible  ${accountnum_tb}
    input text    ${accountnum_tb}    14151617
Click Continue Button
    wait until element is visible    ${continue_btn}
    click element    ${continue_btn}
Verify Error Message for Blank Account Detail
    wait until element is visible    ${blank_accountnum_error}
    element should contain    ${blank_accountnum_error}    Please provide a valid account details. Thank you.

Verify Upload Identification Page
    wait until element is visible    ${id_ddlist}
    wait until element is visible    ${frontview_filesel}
    wait until element is visible    ${backview_filesel}
    wait until element is visible    ${holding_filesel}
    wait until element is visible    ${continue_btn2}


Select ID Type
    click element    ${id_ddlist}
    wait until element is not visible    ${blank_idtype_error}    10s
    wait until element is not visible    ${blank_image_error}    10s
    click element    ${passport_lbl}
    #select from list by value    ${id_ddlist}    UMID
Select Front View
    choose file    ${frontview_filesel}    C:/robot-scripts/sabongeros/Data/gcash receipt.png
Select Back View
    choose file    ${backview_filesel}    C:/robot-scripts/sabongeros/Data/gcash receipt.png
Select Proof
    choose file    ${holding_filesel}    C:/robot-scripts/sabongeros/Data/gcash receipt.png
Click Continue Button 2
    click element    ${continue_btn2}
Verify Error Message for Blank ID Type
    wait until element is visible    ${blank_idtype_error}
    element should contain    ${blank_idtype_error}    Please select an ID type
Verify Error Message for Blank Proof
    wait until element is visible    ${blank_image_error}
    element should contain    ${blank_image_error}    Please upload the required images


Click Confirm Button
    wait until element is visible    ${confirm_btn}
    click element    ${confirm_btn}
Get Transaction Details
    ${TRANSACTION_NUM} =    get text    ${transactionnum_lbl}
    set suite variable    ${TRANSACTION_NUM}
    #${AMOUNT} =    get text    ${amount_lbl}
    #set suite variable    ${AMOUNT}
    ${OUTLET} =    get text    ${outlet_lbl}
    set suite variable    ${OUTLET}
    ${ACCOUNTDETAIL} =    get text    ${accountdetail_lbl}
    set suite variable    ${ACCOUNTDETAIL}
Verify Successful Cash Out Notification
    wait until element is visible    ${transactionnum_lbl}
    wait until element is visible    ${gotomywallet_btn}
Click Go To My Wallet Button
    click element    ${gotomywallet_btn}


Click Cash Out History
    wait until element is visible    ${latestco}
    click element    ${latestco}
Verify Latest Cash Out
    wait until element is visible    ${transactionnum_lbl2}
    element should contain    ${transactionnum_lbl2}    ${TRANSACTION_NUM}
    element should contain    ${outlet_lbl2}    ${OUTLET}
    element should contain    ${accountdetail_lbl2}    ${ACCOUNTDETAIL}
