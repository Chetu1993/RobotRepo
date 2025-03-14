*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/commonFunctionality.robot
Resource    ../Resources/demoblazeKeywords.robot

Test Setup      commonFunctionality.opening demoblaze application
Test Teardown   commonFunctionality.closing the browsers

*** Test Cases ***

TC to check the valid details in demoblaze application
    [Documentation]     validation of login details from RF

    Set Selenium Speed    2s

    click on the login button

    enter the username and password     pavanol     test@123

    click on login after the username and password

    validate the logout button

    Sleep    3s
    
#    Click Element    //*[@id='login2']
#    Set Selenium Speed  2s
#    Input Text    //*[@id='loginusername']    pavanol
#    Input Text    //*[@id='loginpassword']    test@123
#    Click Element    //button[text()='Log in']
#    Page Should Contain Element     //*[text()='Log out']   Log out





    




*** Keywords ***

