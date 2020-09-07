*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary

*** Test Cases ***
Connect To DB
    connect to database    dbapiModuleName=    dbName=    dbUsername=    dbPassword=    dbHost=    dbPort=3306
    ${view_accounts}  query    select * from accounts where email='gian.santiago@citrof.com'
    log    ${view_accounts}