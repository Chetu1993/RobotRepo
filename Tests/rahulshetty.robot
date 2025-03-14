*** Settings ***


Library     SeleniumLibrary
Resource   ../Resources/rahulshettyLoginKeywords.robot
Variables   ../Resources/webElements/rahulshettyloginElements.py
Resource    ../Resources/commonFunctionality.robot

Test Setup  commonFunctionality.opening the rahulshettylogin application
Test Teardown   commonFunctionality.closing the browsers

*** Variables ***

@{variables}=   iphone X    Samsung Note 8      Nokia Edge      Blackberry

*** Test Cases ***

TC to test the ecommerce application
    [Documentation]     Testing application with RF

    Set Selenium Speed    1s


    enter the username and password     rahulshettyacademy  learning

    click on userradio button

    click on ok button

    select the option   Consultant

    click on checkbox

    validate the page with one of the webelement

    click on the siginbutton
    
    Sleep    3s


   @{elements}=    Get WebElements    ${prodcol}

    FOR    ${element}    IN    @{elements}

        IF    '"${element} == ${variables}[0]"'

        click on the product cart button

        BREAK

        END
         
    END

    click on main cart button

    click on checkout button

    enter the country name  ind


    wait for until list of countries is visible

    click on the country in list of countries list


    click on country terms and conditions

    click on purchase button

    validation of final purchase message element

    
    after purchase validation page should contain the matching text     next



