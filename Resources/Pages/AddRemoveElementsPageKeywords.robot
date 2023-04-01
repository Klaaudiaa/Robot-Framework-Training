*** Settings ***
Documentation       Keywords that Add and remove elements with button

Library             SeleniumLibrary
Library             OperatingSystem
Variables           ../../Libraries/Locators/AddRemovePage.py


*** Keywords ***
User click add button
    Click Button    ${AddRemovePage["add_button"]}

User click delete button
    Click Button    ${AddRemovePage["delete_button"]}

User is redirected to Add/Remove Elements Page
    Element Text Should Be    ${AddRemovePage["page_header"]}    Add/Remove Elements

User succefully added element
    Page Should Contain Button    ${AddRemovePage["delete_button"]}

User succesfully deleted element
    Page Should Not Contain Button    ${AddRemovePage["delete_button"]}
