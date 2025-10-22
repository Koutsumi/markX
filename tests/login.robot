*** Settings ***
Documentation     Login test suite for the application.
Library           AppiumLibrary

Resource          ../resources/base.resource
Resource          ../resources/screens/login.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Should Login Successfully
    [Documentation]    Test case to verify successful login functionality.
    
    Do login