*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/RulesFAQ_KW.robot

Suite Setup    common_kw.Start FAQ Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Check Rules Page
    rulesfaq_kw.verify rules page

Check FAQ Page
    rulesfaq_kw.verify faq page