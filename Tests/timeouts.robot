*** Settings ***

Library     SeleniumLibrary     timeout=5s
Library     pabot.pabot




*** Variables ***

${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***

TC to validate different timeouts
    [Documentation]     validating different timeouts using RF

    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window
    ${gettime}  Get Selenium Timeout

    ${getspeed}     Get Selenium Speed

    Set Selenium Timeout    7s

    Set Selenium Speed    1s

    Click Element    //*[text()='Simple Alert']

    Handle Alert    action=Accept
    
    Click Element    //*[text()='Confirmation Alert']

    Handle Alert    action=Accept

    Page Should Contain    You pressed OK!
    
    Click Element    //*[text()='Prompt Alert']

    Set Selenium Speed    2s

    Input Text Into Alert    chetan     action=Accept
    
    Page Should Contain    Hello chetan! How are you today?

    ${gettingtimeout}   Get Selenium Timeout
    ${gettingspeec}     Get Selenium Speed

    Close Browser


*** Keywords ***

