*** Settings ***
Documentation       Keywords to click checkbox and verify
...                 if they are working properly

Library             SeleniumLibrary
Library             OperatingSystem
Variables           ../../Libraries/Locators/CheckboxesPage.py


*** Keywords ***
User goes to chceckbox Page
    Go To    ${CheckboxesPage["URL"]}

User select first checkbox
    Select Checkbox    ${CheckboxesPage["checkboxElement1"]}

User select second chceckbox
    Select Checkbox    ${CheckboxesPage["checkboxElement2"]}

User unselect first chceckbox
    Unselect Checkbox    ${CheckboxesPage["checkboxElement1"]}

User unselect second chceckbox
    Unselect Checkbox    ${CheckboxesPage["checkboxElement2"]}

First checkbox is selected
    Checkbox Should Be Selected    ${CheckboxesPage["checkboxElement1"]}

Second checkbox is selected
    Checkbox Should Be Selected    ${CheckboxesPage["checkboxElement2"]}

First chceckbox is unchecked
    Checkbox Should Not Be Selected    ${CheckboxesPage["checkboxElement1"]}

Second chceckbox is unchecked
    Checkbox Should Not Be Selected    ${CheckboxesPage["checkboxElement2"]}
