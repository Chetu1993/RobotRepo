*** Settings ***

Library     SeleniumLibrary
#Library     pabot.pabotLib
*** Variables ***
${url}  https://www.makemytrip.com/

${browser}  edge

*** Test Cases ***
TC to print all the links in homepage
    [Documentation]     printing all the links using RF

    Open Browser    ${url}  ${browser}
    Sleep    2s
    Maximize Browser Window

    @{elements}=    Get WebElements    //a

    FOR    ${i}    IN    @{elements}
        ${text}=    Get Text    ${i}
        Log To Console    ${text}

    END






*** Keywords ***

