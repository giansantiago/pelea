*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary

*** Test Cases ***
Connect To DB
    connect to database    dbapiModuleName=pymysql    dbName=sabongeros_sandbox_rds    dbUsername=citrof_admin    dbPassword=p1@l355w0rth0    dbHost=sabongeros-dev-staging.czwrbdz7msz0.us-west-2.rds.amazonaws.com    dbPort=3306
    ${view_accounts}  query    select * from accounts where email='gian.santiago@citrof.com'
    log    ${view_accounts}