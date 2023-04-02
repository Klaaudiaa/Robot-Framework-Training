*** Settings ***
Documentation       Keywords to open, operate and verify the
...                 behavior of the elements on The-Internet HomePage

Library             SeleniumLibrary
Library             OperatingSystem
Library             Collections


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
    Then User is redirected to "${Website}" Page

User is redirected to "${Website}" Page
    &{nonstandard_headers}    Create Dictionary
    ...    Dropdown=Dropdown List
    ...    Dynamic Loading=Dynamically Loaded Page Elements
    ...    File Download=File Downloader
    ...    JQuery UI Menus=JQueryUI - Menu
    ...    Multiple Windows=Opening a new window
    ...    Notification Messages=Notification Message
    ...    Redirect Link=Redirection
    ...    Sortable Data Tables=Data Tables
    ...    WYSIWYG Editor=An iFrame containing the TinyMCE WYSIWYG Editor
    ...    Dynamic Loading=Dynamically Loaded Page Elements
    ...    Form Authentication=Login Page
    ...    Shadow DOM=Simple template

    @{Keys}    Get Dictionary Keys    ${nonstandard_headers}

    FOR    ${counter}    IN RANGE    1    6
        ${Var}    Get Element Count    css:div h${counter}
        IF    $Var != 0
            IF    '${Website}' in ${Keys}
                ${Value}    Get From Dictionary    ${nonstandard_headers}    ${Website}
                Element Text Should Be    css:div h${counter}    ${Value}
                BREAK
            END
            Element Text Should Be    css:div h${counter}    ${Website}
            BREAK
        END
    END
