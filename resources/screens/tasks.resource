*** Settings ***
Documentation     Base resource file for common keywords and settings.

Library           AppiumLibrary

*** Variables ***
${taskInput}            xpath=//*[@resource-id="newTask"]
${createTaskButton}     xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new task
    [Documentation]    Keyword to create a new task in the application.
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    ${taskInput}    10
    
    Input Text        ${taskInput}    ${task_name}
    Click Element     ${createTaskButton}
