*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/Rules.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/FAQ.robot


*** Keywords ***
Verify Rules Page
    topnav.navigate to rules page
    rules.verify page url
    rules.verify rules page

Verify FAQ Page
    topnav.navigate to faq page
    faq.verify page url
    faq.verify rules page