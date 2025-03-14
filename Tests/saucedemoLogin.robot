*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/commonFunctionality.robot
Resource    ../Resources/saucedemoKeywords.robot

Test Setup  commonFunctionality.opening the saucedemo application
Test Teardown   commonFunctionality.closing the browsers



*** Test Cases ***

TC to validate the login feature using saucedemo app
    [Documentation]     login detail validation
    Set Selenium Speed  2s

    enter the username  standard_user

    enter the password  secret_sauce

    click login button

    element validation in page


