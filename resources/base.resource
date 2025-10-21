*** Settings ***
Documentation     Base resource file for common keywords and settings.

Library           AppiumLibrary
Library           ../loadEnvs.py

*** Keywords ***
Start session
    Open Application
    ...    remote_url=%{APP_URL}
    ...    automationName=%{MOBILE_AUTOMATION_NAME}
    ...    platformName=%{MOBILE_PLATFORM_NAME}
    ...    deviceName=%{MOBILE_DEVICE_NAME}
    ...    uuid=%{DEVICE_UUID}
    ...    app=${EXECDIR}/apps/markx.apk

Finish session
    Close Application