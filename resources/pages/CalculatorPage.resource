*** Settings ***
Resource    ${EXECDIR}${/}resources${/}pages${/}BasePage.resource
Library     AppiumLibrary

*** Variables ***
${DIGIT_2}     com.google.android.calculator:id/digit_2
${DIGIT_3}     com.google.android.calculator:id/digit_3
${ADD}         com.google.android.calculator:id/op_add
${EQ}          com.google.android.calculator:id/eq
${RESULT}      com.google.android.calculator:id/result_final

*** Keywords ***
On Calculator
    Wait Id    ${DIGIT_2}    5s

Sum 2 Plus 3
    Tap Id     ${DIGIT_2}
    Tap Id     ${ADD}
    Tap Id     ${DIGIT_3}
    Tap Id     ${EQ}

Result Should Be
    [Arguments]    ${expected}
    ${text}=    Get Text    id=${RESULT}
    Should Be Equal    ${text}    ${expected}
