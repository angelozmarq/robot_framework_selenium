*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/login_locators.py

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${TXT_USERNAME}
    Input Text    ${TXT_USERNAME}    ${username}

Enter Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${TXT_PASSWORD}
    Input Text    ${TXT_PASSWORD}    ${password}

Click Login Button
    Wait Until Element Is Visible    ${BTN_LOGIN}
    Click Button    ${BTN_LOGIN}