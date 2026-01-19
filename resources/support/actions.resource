*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Wait Id
    [Arguments]    ${id}    ${timeout}=5s
    Wait Until Page Contains Element    id=${id}    ${timeout}

Tap Id
    [Arguments]    ${id}
    Click Element    id=${id}

Type Id
    [Arguments]    ${id}    ${text}
    Input Text    id=${id}    ${text}

Assert Text Visible
    [Arguments]    ${text}    ${timeout}=5s
    Wait Until Page Contains    ${text}    ${timeout}
