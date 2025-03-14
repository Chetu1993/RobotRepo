*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/saucedemoKeywords.robot
Resource    ../Resources/commonFunctionality.robot
Variables   ../Resources/webElements/saucedemoelements.py

Test Setup  commonFunctionality.opening the saucedemo application
Test Teardown   commonFunctionality.closing the browsers


Test Template   validating the different inputs   



*** Test Cases ***                                              USERNAME                PASSWORD                            ERROR_MSG

enter the correct username and wrong password                 standard_user             well123             Epic sadface: Username and password do not match any user in this service
enter the incorrect username and correct password             welcome@123$              secret_sauce        Epic sadface: Username and password do not match any user in this service
enter the empty username and correct password                  ${EMPTY}                 secret_sauce        Epic sadface: Username is required
enter the correct username and empty password                 standard_user             ${EMPTY}            Epic sadface: Password is required
enter the incorrect username and empty password               hi45451453543             ${EMPTY}            Epic sadface: Password is required
enter the correct username and incorrect password             standard_user             FWEFEW45453434      Epic sadface: Username and password do not match any user in this service


*** Keywords ***

validating the different inputs


    [Arguments]     ${username}     ${password}     ${error_msg}
    Input Text    ${enter_user}    ${username}
    Input Text    ${enter_pass}    ${password}

    click login button

    Page Should Contain    ${error_msg}






