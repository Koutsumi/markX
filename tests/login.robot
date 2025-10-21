*** Settings ***
Documentation     Login test suite for the application.
Library           AppiumLibrary

Resource          ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Should Login Successfully
    [Documentation]    Test case to verify successful login functionality.
    Wait Until Page Contains    Endereço ID da API
    
    Input Text        xpath=//*[@resource-id="apiIp"]    192.168.15.132    
    Click Element     xpath=//*[@resource-id="signInButton"]    
    
    Wait Until Page Contains    Minhas tarefas    10