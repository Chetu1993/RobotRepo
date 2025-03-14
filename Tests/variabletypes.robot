*** Settings ***


*** Variables ***

${variable}    good morning

*** Test Cases ***

first test case
    ${variable}     Set Variable    good afternoon

    Log To Console    ${variable}

second test case

    Log To Console    ${variable}

third test case
    keywords variable

*** Keywords ***

keywords variable
    [Arguments]     ${variable}=good night
    Log To Console    ${variable}



