*** Settings ***
Resource            ../Resources/BaseKeywords.robot
Resource            ../Resources/LoginPageKeywords.robot
Resource            ../Resources/HomePageKeywords.robot
Variables           ../Libraries/LoginPage.py

Suite Setup         Open my Browser    https://the-internet.herokuapp.com    Chrome
Suite Teardown      Close All Browsers
Test Setup          Go To    ${LoginPage["URL"]}


*** Test Cases ***
TestCase1
#Login try with correct data
    Given User log in with User: tomsmith and password: SuperSecretPassword!
    When User click login button
    Then User is redirected to Secure Area
    And User Click Logout Button
    And User is redirected to Login Page after logout

TestCase2
#Login try with incorrect data
    Given User Log In With User: username And Password: password
    When User click login button
    Then User is rejected
