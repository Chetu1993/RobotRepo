*** Settings ***

Library     SeleniumLibrary
#Resource    C:\\Users\\cks_1\\AquaProjects\\RobotFrameworkPractice\\Resources\\commonFunctionality.robot
#Resource    C:\\Users\\cks_1\\AquaProjects\\RobotFrameworkPractice\\Resources\\googletestkeywords.robot

Resource    ../Resources/commonFunctionality.robot
Resource    ../Resources/googletestkeywords.robot

Test Setup      commonFunctionality.opening the google application
Test Teardown   commonFunctionality.closing the browsers



*** Test Cases ***
TC to test the basic functionality of the application
    [Documentation]     TC to test the basics of application

    googletestkeywords.enter inputText in googlesearch box  robotframework
    Sleep    3s
    googletestkeywords.click on google image

    Sleep    2s

    googletestkeywords.click on google btn

    Sleep    2s










