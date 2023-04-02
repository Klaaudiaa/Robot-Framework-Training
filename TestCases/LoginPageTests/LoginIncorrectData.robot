*** Settings ***
Resource        ../../Resources/Common_Keywords.robot
Resource        ../../Resources/Pages/LoginPageKeywords.robot
Resource        ../../Resources/Pages/HomePageKeywords.robot
Variables       ../../Libraries/Locators/LoginPage.py

Test Setup      Go To    ${LoginPage["URL"]}

Force Tags      login_page


*** Test Cases ***
Log in with the incorrect data - standard data
    Given User login With User: "username" And Password: "password"
    When User clicks the Login Button
    Then User is rejected with error "Your username is invalid!"

Log in with the incorrect data - special signs
    Given User login With User: "!@#$%^&*\(\):"<>?,.Üüぃあぁ" And Password: "!@#$%^&*\(\):"<>?,.Üüぃあぁ"
    When User clicks the Login Button
    Then User is rejected with error "Your username is invalid!"

Log in with the incorrect data - empty list
    Given User login With User: "[]" And Password: "[]"
    When User clicks the Login Button
    Then User is rejected with error "Your username is invalid!"

Log in with the incorrect data - nulls
    Given User login With User: "null" And Password: "null"
    When User clicks the Login Button
    Then User is rejected with error "Your username is invalid!"

Log in with the incorrect data - empty string
    Given User login With User: "" And Password: ""
    When User clicks the Login Button
    Then User is rejected with error "Your username is invalid!"
