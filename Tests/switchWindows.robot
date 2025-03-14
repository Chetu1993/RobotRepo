*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://rahulshettyacademy.com/loginpagePractise/

*** Test Cases ***

TC to test the windowHandles using RF

    [Documentation]     TC to test the windowHandles

    Open Browser    ${url}      ${browser}
    
    Sleep    2s
    
    Maximize Browser Window

    Set Selenium Speed    1s

    Wait Until Element Is Visible    //*[@class='blinkingText']

    Click Element    //*[@class='blinkingText']





    @{windowHandles}   Get Window Handles

    Log    ${windowHandles}



    @{windowIds}   Get Window Identifiers

    Log    ${windowIds}




    @{windownames}     Get Window Names

    Log    ${windownames}



    @{windowtitles}     Get Window Titles

    Log    ${windowtitles}

    Set Window Position    100    200

    ${x}    ${y}=   Get Window Position

    Log    ${x}
    Log    ${y}

    Set Window Size    500    700
    ${width}    ${height}=  Get Window Position
    Log    ${width}
    Log    ${height}



    Switch Window   ${windowHandles}[1]

    Close Window

    Switch Window   ${windowHandles}[0]

    Close Window

*** Keywords ***

