*** Settings ***
Resource        ../../Resources/Pages/AddRemoveElementsPageKeywords.robot
Variables       ../../Libraries/Locators/AddRemovePage.py

Test Setup      Go To    ${AddRemovePage["URL"]}

Force Tags      add_remove_elements


*** Test Cases ***
Deleting created element using button
    Given User is redirected to Add/Remove Elements Page
    When User click add button
    And User click delete button
    Then User succesfully deleted element
