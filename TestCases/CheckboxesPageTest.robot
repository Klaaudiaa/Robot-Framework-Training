*** Settings ***
Resource        ../Resources/Common_Keywords.robot
Resource        ../Resources/Pages/CheckboxesPageKeywords.robot
Resource        ../Resources/Pages/HomePageKeywords.robot
Variables       ../Libraries/Locators/CheckboxesPage.py


*** Test Cases ***
Selecting first chceckbox
    Given User goes to chceckbox Page
    When User select first checkbox
    Then First checkbox is selected

Selecting second checkbox
    Given User goes to chceckbox Page
    When User select second chceckbox
    Then Second checkbox is selected

Unselecting first chceckbox
    Given User goes to chceckbox Page
    And User select first checkbox
    When User unselect first chceckbox
    Then First chceckbox is unchecked

Unselecting second chceckbox
    Given User goes to chceckbox Page
    And User select second chceckbox
    When User unselect second chceckbox
    Then Second chceckbox is unchecked
