*** Settings ***
Documentation     Base resource file for common keywords and settings.

Library           AppiumLibrary

*** Keywords ***
Do login
    [Documentation]    Keyword to perform login action.
    
    Input Text        xpath=//*[@resource-id="apiIp"]    192.168.15.132    
    Click Element     xpath=//*[@resource-id="signInButton"]    
    
    Wait Until Page Contains    Minhas tarefas    10