*** Settings ***
Documentation     Tasks test suite for the application.

Resource          ../resources/base.resource
Resource          ../resources/screens/login.resource
Resource          ../resources/screens/tasks.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Should Register New Task
    [Documentation]    Test case to verify the registration of a new task.
    
    Do Login
    Create a new task    Task from Robot Framework 