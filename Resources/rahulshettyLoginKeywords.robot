*** Settings ***

Library     SeleniumLibrary
Variables   ./webElements/rahulshettyloginElements.py

*** Keywords ***

enter the username and password

    [Arguments]     ${enteruser}     ${enterpass}
    Input Text    ${username}    ${enteruser}
    Input Text    ${password}    ${enterpass}


click on userradio button
    Click Element    ${userradio}

click on ok button
    Click Element    ${okaybtn}


select the option
    [Arguments]     ${inputval}
    Select From List By Label    ${selectoption}    ${inputval}


click on checkbox
    click element   ${termsandconditions}


validate the page with one of the webelement
    Page Should Contain Element    ${pageval}


click on the siginbutton
    Click Element    ${signinele}

setofproducts
    Get WebElements     ${prodcol}

click on the product cart button
    Click Element    ${addcartbtn}

click on main cart button
    Click Element    ${carticon}

click on checkout button
    Click Element    ${checkoutbtn}

enter the country name
    [Arguments]     ${country}
    Input Text    ${entercountry}   ${country}

wait for until list of countries is visible
    Wait Until Element Is Visible   ${visiblecountry}

click on the country in list of countries list
    Click Element    ${selectcountry}

click on country terms and conditions
    Click Element    ${termsandagree}

click on purchase button
    Click Element    ${purchasebtn}

validation of final purchase message element
    Page Should Contain Element    ${successval}

after purchase validation page should contain the matching text
    [Arguments]     ${valafterpurchase}
    Page Should Contain    ${valafterpurchase}















