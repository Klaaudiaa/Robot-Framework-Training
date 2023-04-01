*** Settings ***
Documentation       Set of Keywords to open, operate and verify the
...                 behavior of the elements on The-Internet HomePage

Library             SeleniumLibrary
Library             OperatingSystem


*** Keywords ***
Open Browser on Homepage
    Open Browser    https://the-internet.herokuapp.com    gc

User opens HomePage site
    Go To    https://the-internet.herokuapp.com

User click on "${Website_Name}" link
    Click Link    Link:${Website_Name}

Click "${Website}" link on HomePage Test
    Given User opens HomePage site
    When User click on "${Website}" link
