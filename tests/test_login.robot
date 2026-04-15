*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/commons.resource
Resource   ../data/constants.resource
Resource    ../resources/pages/login_page.resource
Resource    ../utilities/json_utilities.resource

Suite Setup    Read JSON Data    ${LOGIN_DATA}
Test Setup    Open Application   ${URL}    ${BROWSER}
Test Teardown    Teardown Browser

Test Template    Login

*** Keywords ***
Login
    [Arguments]    ${role}    ${expected}
    ${username}=    Get Value From Json    ${JSON_DATA_OBJECT}    $.${role}.username
    ${password}=    Get Value From Json    ${JSON_DATA_OBJECT}    $.${role}.password
    Enter Username   ${username[0]}
    Enter Password  ${password[0]}
    Click Login Button
    Element Should Be Visible    ${expected}
    

*** Test Cases ***    ROLE    EXPECTED
Standard User Login    standard_user    ${LBL_APP_LOGO}
Locked Out User Login    locked_out_user    ${LBL_LOGIN_LOGO}
Problem User Login    problem_user    ${LBL_APP_LOGO}
Performance Glitch User Login    performance_glitch_user    ${LBL_APP_LOGO}


