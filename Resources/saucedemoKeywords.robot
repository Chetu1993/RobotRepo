*** Settings ***

Library    SeleniumLibrary
Variables   ./webElements/saucedemoelements.py
*** Keywords ***

enter the username
    [Arguments]     ${username}
    Input Text  ${enter_user}   ${username}

enter the password

    [Arguments]     ${password}
    Input Text  ${enter_pass}   ${password}

click login button

    Click Element    ${login_btn}

element validation in page
    Page Should Contain Element    ${prodvalid}

click on cart button
    Click Element    ${cartbtn}

cart page validation
    Page Should Contain Element    ${cartval}

product validation in cart page

    Page Should Contain Element    ${productval}


click on checkout button
    Click Element    ${checkoutbtn}

enter first name
    [Arguments]     ${fname}
    Input Text    ${firstname}    ${fname}


enter last name
    [Arguments]     ${lname}
    Input Text    ${lastname}    ${lname}

enter the pincode
    [Arguments]     ${i_pincode}
    Input Text    ${pincode}    ${i_pincode}


click on the continue button after entering all details
    Click Element    ${continuebtn}


click on finish button
    Click Element    ${finishbtn}

