*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Resource    ../data/constants.resource

*** Variables ***
${JSON_DATA_OBJECT}    ${None}

*** Keywords ***
Read JSON Data
    [Arguments]    ${json_file}
    ${json_data}=    Load Json From File    ${json_file}
    Set Suite Variable    ${JSON_DATA_OBJECT}    ${json_data}