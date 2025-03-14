*** Settings ***


Variables   ./webElements/demoblazeElements.py
Library     SeleniumLibrary

*** Keywords ***

click on the login button

    Set Selenium Speed  2s

    Click Element   ${loginbtn}

enter the username and password

    [Arguments]     ${enteruser}    ${enterpass}
    Input Text    ${enterusername}    ${enteruser}
    Input Text  ${enterpassword}    ${enterpass}

#enter the password
#
#    [Arguments]     ${enterpass}
#    Input Text  ${enterpassword}    ${enterpass}

click on login after the username and password

    Click Element    ${afterUPloginbtn}

validate the logout button

    Page Should Contain Element   ${logoutbtn}



