*** Settings ***
Library     SeleniumLibrary



*** Variables ***
&{urls}     a=https://www.google.com    b=https://testautomationpractice.blogspot.com/    c=https://demoblaze.com
@{browsers}     chrome  firefox     edge
*** Test Cases ***

TC to test the google application
    Open Browser    ${urls.a}   ${browsers}[0]
    Sleep    2s
    close browser
TC to test the automation application
    Open Browser    ${urls.b}   ${browsers}[0]
    Sleep    2s
    Close Browser
TC to test the demoblaze application
    Open Browser    ${urls.c}   ${browsers}[1]
    Sleep    2s
    Close Browser





*** Keywords ***