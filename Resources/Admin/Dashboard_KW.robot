*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/LeftNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Dashboard.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/CashInRequests.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/CashOutRequests.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/EventFights.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Arenas.robot

*** Keywords ***
Navigate to Cash-In Requests Page
    dashboard.verify dashboard page
    dashboard.click cash-in button
    cashinrequests.verify cash-in requests page

Navigate to Cash-Out Requests Page
    leftnav.navigate to dashboard
    dashboard.verify dashboard page
    dashboard.click cash-out button
    cashoutrequests.verify cash-out requests page

Navigate to Event Fights Page
    leftnav.navigate to dashboard
    dashboard.verify dashboard page
    dashboard.click events button
    eventfights.verify event fights page

Navigate to Arenas Page
    leftnav.navigate to dashboard
    dashboard.verify dashboard page
    dashboard.click arenas button
    arenas.verify arenas page