*** Settings ***
Resource    ${EXECDIR}${/}resources${/}support${/}actions.resource
Library     AppiumLibrary

*** Keywords ***
Get Package
    ${pkg}=    Get Current Package
    [Return]   ${pkg}

Get Activity
    ${act}=    Get Current Activity
    [Return]   ${act}
