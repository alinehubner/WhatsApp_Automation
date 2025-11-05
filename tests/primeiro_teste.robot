*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Hello Robot
    Log To Console    \nOla! Seu Robot Framework esta funcionando :)

Criar E Listar Pasta Temp
    ${tmp}=    Set Variable    ${CURDIR}${/}tmp_demo
    Create Directory    ${tmp}
    Create File    ${tmp}${/}arquivo.txt    conteudo de teste
    ${arquivos}=    List Files In Directory    ${tmp}
    Log To Console    Arquivos: ${arquivos}
