*** Settings ***
Documentation       Keywords to log in, log out and verify form authentication

Library             SeleniumLibrary
Library             OperatingSystem
Variables           ../../Libraries/Locators/LoginPage.py


*** Keywords ***
User login with user: "${username}" and password: "${password}"
    Input Text    ${LoginPage["username_field"]}    ${username}
    Input Password    ${LoginPage["password_field"]}    ${password}

User clicks the Login Button
    Click Button    ${LoginPage["login_button"]}

User is redirected to Secure Area
    Element Should Contain    ${LoginPage["information_flash"]}    You logged into a secure area!
    Element Text Should Be    ${LoginPage["page_header"]}    Secure Area

User is rejected with error "${error_value}"
    Element Should Contain    ${LoginPage["information_flash"]}    ${error_value}

User click the Logout button
    Click Element    ${LoginPage["logout_button"]}

User is redirected to Login Page after logout
    Element Should Contain    ${LoginPage["information_flash"]}    You logged out of the secure area!
    #tbd check the header
