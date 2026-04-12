*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    String

*** Keywords ***
Open Application
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Screenshot Directory    ${OUTPUT_DIR}${/}screenshots

Save Screenshot
    [Arguments]    ${filename_prefix}=fail
    ${timestamp}=    Get Current Date    result_format=%Y%m%d-%H%M%S
    ${name}=    Set Variable    ${TEST_NAME}_${filename_prefix}_${timestamp}.png
    ${safe_name}=    Replace String    ${name}    ${SPACE}    _
    Capture Page Screenshot    ${safe_name}

Teardown Browser
    Close Browser
    Run Keyword If Test Failed    Save Screenshot