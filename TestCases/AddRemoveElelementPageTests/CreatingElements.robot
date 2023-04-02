*** Settings ***
Resource        ../../Resources/Pages/AddRemoveElementsPageKeywords.robot
Variables       ../../Libraries/Locators/AddRemovePage.py

Test Setup      Go To    ${AddRemovePage["URL"]}

Force Tags      add_remove_elements


*** Test Cases ***
Creating new element using button
    Given User is redirected to Add/Remove Elements Page
    When User click add button
    Then User succefully added element
