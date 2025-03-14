*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{browser}  chrome  firefox     edge
&{url}  a=https://www.google.com    b=https://www.amazon.in     c=https://www.demoblaze.com     d=https://www.saucedemo.com     e=https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***

opening the google application

    Open Browser    ${url.a}    ${browser}[0]
    Sleep    3s
    Maximize Browser Window

opening demoblaze application

    Open Browser    ${url.c}    ${browser}[2]
    Sleep    2s
    Maximize Browser Window

opening the saucedemo application
    Open Browser    ${url.d}      ${browser}[0]
    Sleep    2s
    Maximize Browser Window

opening the rahulshettylogin application
    Open Browser    ${url.e}    ${browser}[0]
    Sleep    2s
    Maximize Browser Window

closing the browsers

    Sleep    3s
    Close All Browsers