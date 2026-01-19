*** Settings ***
Resource    ${EXECDIR}${/}resources${/}pages${/}BasePage.resource
Library     AppiumLibrary

*** Variables ***
${SEARCH_BUTTON}      com.whatsapp:id/menuitem_search
${SEARCH_INPUT}       com.whatsapp:id/search_input

*** Keywords ***
On Home
    Wait Id    ${SEARCH_BUTTON}    10s

Open Search
    Tap Id     ${SEARCH_BUTTON}
    Wait Id    ${SEARCH_INPUT}

Search For
    [Arguments]    ${text}
    Type Id    ${SEARCH_INPUT}    ${text}
