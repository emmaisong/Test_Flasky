*** Settings ***
Suite Setup       Set Selenium implicit wait    5s
Test Teardown    Close All Browsers
Library           FakerLibrary
Library           SeleniumLibrary
Resource          ../Resource/NewRegistration_Test.Resource


*** Test Cases ***
New User should be able to navigate to the Application Homepage using valid Credential
     Navigate to Application Homepage & Register successfully

Existing User should be logged in successfully with valid credentials
    Existing User Login
