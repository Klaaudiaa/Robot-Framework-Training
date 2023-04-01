*** Settings ***
Resource        ../../Resources/Common_Keywords.robot
Resource        ../../Resources/Pages/LoginPageKeywords.robot
Resource        ../../Resources/Pages/HomePageKeywords.robot
Variables       ../../Libraries/Locators/LoginPage.py

Test Setup      Go To    ${LoginPage["URL"]}

Force Tags      login_page


*** Test Cases ***
Log in with the correct data
    Given User login with User: "tomsmith" and password: "SuperSecretPassword!"
    When User clicks the Login Button
    Then User is redirected to Secure Area
    And User click the Logout button
    And User is redirected to Login Page after logout
