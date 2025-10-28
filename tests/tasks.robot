*** Settings ***
Documentation     Tasks test suite for the application.

Library    AppiumLibrary
Library    ../libs/mongo.py

Resource          ../resources/base.resource
Resource          ../resources/screens/login.resource
Resource          ../resources/screens/tasks.resource

Test Setup       Start session
Test Teardown    Finish session

*** Variables ***
${register_task}    Task from Robot Framework
${remove_task}      Another task from Robot Framework
${complete_task}    Last task from Robot Framework

*** Test Cases ***
Should Register New Task
    [Documentation]    Test case to verify the registration of a new task.
    
    Remove task from database    ${register_task}

    Do Login
    Create a new task    ${register_task}
    Should have task     ${register_task}

Should Remove a Task
    [Documentation]    Test case to verify the remove function

    Remove task from database    ${remove_task}

    Do Login
    Create a new task    ${remove_task}
    Should have task     ${remove_task}

    Remove task by name        ${remove_task}
    Wait Until Page Does Not Contain   ${remove_task}    10

Should be able to complete a task
    [Documentation]    Teste case to verify the complete task function

    Remove task from database    ${complete_task}

    Do Login
    Create a new task    ${complete_task}
    Should have task     ${complete_task}

    Complete task by name    ${complete_task}
    Task should be done      ${complete_task}
