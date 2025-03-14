*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://www.demoblaze.com/

*** Test Cases ***

TC1 to test the mouse actions using RF
    [Tags]  sanity
    [Documentation]     testing the different mouse actions using RF

    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window

    Set Selenium Speed    1s

    ${gettingtime}     Get Selenium Implicit Wait

    Mouse Down    //a[text()='About us']
    
    ${settingTime}      Set Selenium Implicit Wait    2s
    
    Mouse Up    //a[text()='About us']

    Click Button    (//button[text()='Close'])[4]

TC2 to test the mouse actions using RF
    [Tags]      regression

    [Documentation]     testing the different mouse actions using RF

    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window

    

    
    Mouse Over    //a[text()='About us']
    
    Mouse Down On Link    //a[text()='Cart']
    
    Mouse Down On Image    //*[@alt='First slide']

    ${gettingimplicitTime}     Get Selenium Implicit Wait

    Close Browser



*** Keywords ***

