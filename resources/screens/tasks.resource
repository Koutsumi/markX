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

Should have task
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    
    ...    xpath=//*[@resource-id="taskText"][@text="${task_name}"]    
    ...    5

Remove task by name
    [Arguments]    ${task_name}

    Click Element    
    ...    xpath=//*[@text="${task_name}"]/../..//*[@resource-id='removeTask']
        
    ${submitButton}    Set Variable    xpath=//android.widget.Button[@text="SIM"]

    Wait Until Element Is Visible    ${submitButton}    10
    Click Element                    ${submitButton}        

Complete task by name
    [Arguments]    ${task_name}

    Click Element    
    ...    xpath=//*[@text="${task_name}"]/..

Task should be done
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@text="${task_name}"]/..//android.widget.ImageView