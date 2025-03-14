*** Settings ***
Library     SeleniumLibrary


*** Variables ***

@{urls}  https://www.google.com  https://www.amazon.in   https://testautomationpractice.blogspot.com/

&{browsers}     a=chrome    b=firefox   c=edge


*** Test Cases ***


TC to test the different browsers

    Open Browser    ${urls}[0]  ${browsers.a}   alias=chetan

    Maximize Browser Window

    Sleep    2s

    Open Browser    ${urls}[1]  ${browsers.b}   alias=programming

    Maximize Browser Window

    Sleep    2s

    @{browser_alias}=   Get Browser Aliases

    Log     ${browser_alias}[0]

    @{browser_ids}=     Get Browser Ids
    Log    ${browser_ids}[1]


    Switch Browser  1




*** Keywords ***