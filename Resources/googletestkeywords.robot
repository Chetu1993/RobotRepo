*** Settings ***


Library    SeleniumLibrary
#Variables   C:\\Users\\cks_1\\AquaProjects\\RobotFrameworkPractice\\Resources\\webElements\\googletestelements.py
Variables   ./webElements/googletestelements.py
*** Keywords ***

enter inputText in googlesearch box
    [Arguments]     ${input}
    Input Text  ${googleinput}  ${input}


click on google image
    Click Element    ${googleImageclick}

click on google btn
    Click Element    ${googlesearchBtn}







