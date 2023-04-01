*** Settings ***
Resource            ../Resources/BaseKeywords.robot
Resource            ../Resources/HomePageKeywords.robot
Resource            ../Resources/AddRemoveElementsPageKeywords.robot
Variables           ../Libraries/AddRemovePage.py

Suite Setup         Open my Browser    https://the-internet.herokuapp.com    Chrome
Suite Teardown      Close All Browsers
Test Setup          Go To    ${AddRemovePage["URL"]}


*** Test Cases ***
TestCase1
    Given User is redirected to Add/Remove Elements Page
    When User click add button
    Then User succefully added element

TestCase2
    Given User is redirected to Add/Remove Elements Page
    When User click add button
    And User click delete button
    Then User succesfully deleted element
