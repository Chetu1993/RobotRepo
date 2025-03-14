*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
TC to test the different alert options using RF
    [Documentation]     testing different alert options

    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window
    Set Selenium Speed    2s

#    Click Element    //*[text()='Simple Alert']

#    Handle Alert   action=ACCEPT
#    Alert Should Be Present
#    Handle Alert    action=DISMISS
#    Handle Alert    action=LEAVE
    
#    Click Element    //*[text()='Confirmation Alert']
#
#    Handle Alert    action=Accept
#
#    Page Should Contain Element    //*[text()='You pressed OK!']

#    Click Element    //*[text()='Prompt Alert']
#
#    Input Text Into Alert    chetan     action=Accept
#
#    Page Should Contain Element    //*[text()='Hello chetan! How are you today?']




*** Keywords ***

