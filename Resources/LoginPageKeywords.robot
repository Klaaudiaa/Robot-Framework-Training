*** Settings ***
Documentation       Keywords to log in and test form authentication

Library             SeleniumLibrary
Library             OperatingSystem
Variables           ../Libraries/LoginPage.py


*** Keywords ***
User log in with user: ${username} and password: ${password}
    Input Text    ${LoginPage["username_field"]}    ${username}
    Input Password    ${LoginPage["password_field"]}    ${password}

User click login button
    Click Button    ${LoginPage["login_button"]}

User is redirected to Secure Area
    Element Should Contain    ${LoginPage["information_flash"]}    You logged into a secure area!
    Element Text Should Be    ${LoginPage["page_header"]}    Secure Area

User is rejected
    Element Should Contain    ${LoginPage["information_flash"]}    Your username is invalid!

User click logout button
    Click Element    ${LoginPage["logout_button"]}

User is redirected to Login Page after logout
    Element Should Contain    ${LoginPage["information_flash"]}    You logged out of the secure area!
