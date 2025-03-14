*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/commonFunctionality.robot
Resource    ../Resources/saucedemoKeywords.robot
Variables    ../Resources/webElements/saucedemoelements.py
Library     DataDriver  ./DatasetFiles/saucedemopara.csv


Test Setup      commonFunctionality.opening the saucedemo application
Test Teardown   commonFunctionality.closing the browsers


Test Template   validating the credentials with different username and password


*** Test Cases ***

testing the invalid creds       ${username}    ${password}    ${error_msg}




*** Keywords ***

validating the credentials with different username and password

    [Arguments]     ${username}     ${password}     ${error_msg}
    Input Text      ${enter_user}    ${username}
    Input Text    ${enter_pass}    ${password}


    click login button

    Sleep    2s

    Page Should Contain    ${error_msg}





