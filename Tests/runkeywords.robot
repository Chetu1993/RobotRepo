*** Settings ***

Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Test Cases ***
TC to test the runkeywords using RF
    [Documentation]     tc to test the runkeywords

    Open Browser    ${url}  ${browser}
    Sleep    2s

    Maximize Browser Window

    Set Selenium Speed    1s
    
    Input Text    //*[@id='user-name']  standard_user
    Input Text    //*[@id='password']   secret_sauce
    Click Element   //*[@id='login-button']
    
    ${products}=    Get Element Count    //*[@class='inventory_item_name ']

    Run Keyword If    ${products}>6 and ${products}<10   test keyword 1

    ...  ELSE IF    ${products}<6 and ${products}>10    test keyword 2

    ...  ELSE   test keyword 3




*** Keywords ***

test keyword 1
    
    Log To Console    keyword1 executed correctly which matches correct values

    Close Browser


test keyword 2

    Log To Console    keyword 2 executed correctly which matches exact result

    Close Browser


test keyword 3

    Log To Console    keyword 3 executed successfully which matches correct product values

    close browser

