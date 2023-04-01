*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteURL}    ${Browser}
    Open Browser    ${SiteURL}    ${Browser}
