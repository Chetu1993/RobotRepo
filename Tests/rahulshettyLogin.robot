*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/commonFunctionality.robot
Resource    ../Resources/rahulshettyLoginKeywords.robot


Test Setup  commonFunctionality.opening rahulshetty application
Task Teardown   commonFunctionality.closing the browsers


*** Test Cases ***

TC to test the login validation in rahul shetty login application

    [Documentation]     TC to validate the login feature using RF
    
    Set Selenium Speed  2s

    enter the username and password     rahulshettyacademy  learning

    select user in application

    click on dialog ok button

    select from list with different values  Consultant

    select terms and conditions

    click on signin button

    productspage validation





