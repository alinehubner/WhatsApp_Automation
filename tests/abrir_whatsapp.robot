*** Settings ***
Library    AppiumLibrary
Resource   ../resources/caps.resource

*** Test Cases ***
Abrir WhatsApp No Emulador
    [Documentation]    Smoke: abre o WhatsApp e valida a activity.
    Open Application    ${REMOTE_URL}    &{CAPS}
    Wait Activity       com.whatsapp.*    10s
    Capture Page Screenshot
    [Teardown]    Close Application
