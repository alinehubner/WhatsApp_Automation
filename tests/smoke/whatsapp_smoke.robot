*** Settings ***
Library    AppiumLibrary
Resource   ${EXECDIR}${/}resources${/}android_caps.resource
Resource   ${EXECDIR}${/}resources${/}pages${/}WhatsAppHome.resource
Suite Teardown    Close All Applications

*** Test Cases ***
Abrir WhatsApp e Validar Home
    Open Application    ${REMOTE_URL}    ${CAPS_WA}
    On Home
    ${pkg}=    Get Package
    Should Contain    ${pkg}    com.whatsapp
    Capture Page Screenshot
