*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/saucedemoKeywords.robot
Resource    ../Resources/commonFunctionality.robot

Test Setup  commonFunctionality.opening the saucedemo application

Task Teardown   commonFunctionality.closing the browsers

*** Variables ***
${productname}  Sauce Labs Bike Light
${add_product_to_cart}  //*[@class='inventory_item_name '][text()='${productname}']/ancestor::div[@class='inventory_item_description']//*[text()='Add to cart']


*** Test Cases ***

TC to test the end to end saucedemo application
    [Documentation]     testing  end to end saucedemo application using RF

    enter the username  standard_user

    enter the password  secret_sauce

    click login button


    element validation in page

    Set Selenium Speed    1s


   Click Element    ${add_product_to_cart}
   click on cart button

   cart page validation

   Page Should Contain Element    //*[text()='${productname}']

   click on checkout button

   enter first name     chetan

   enter last name  kumar

   enter the pincode    583103

   click on the continue button after entering all details

   click on finish button


    
    
    











