*** Settings ***
Library    AppiumLibrary
Resource   ${EXECDIR}${/}resources${/}android_caps.resource
Resource   ${EXECDIR}${/}resources${/}pages${/}CalculatorPage.resource
Suite Teardown    Close All Applications

*** Test Cases ***
Somar 2 + 3 = 5
    Open Application    ${REMOTE_URL}    ${CAPS_CALC}
    On Calculator
    Sum 2 Plus 3
    Result Should Be    5
    Capture Page Screenshot
