*** Settings ***
Resource            ../../Resources/Common_Keywords.robot
Resource            ../../Resources/Pages/HomePageKeywords.robot

Test Template       Click "${Website}" link on HomePage Test

Force Tags          home_page


*** Test Cases ***    ${Website}
Clicking "Add/Remove Elements" link    Add/Remove Elements
Clicking "Broken Images" link    Broken Images
Clicking "Challenging DOM" link    Challenging DOM
Clicking "Checkboxes" link    Checkboxes
Clicking "Context Menu" link    Context Menu
Clicking "Disappearing Elements" link    Disappearing Elements
Clicking "Drag and Drop" link    Drag and Drop
Clicking "Dropdown" link    Dropdown
Clicking "Dynamic Content" link    Dynamic Content
Clicking "Dynamic Controls" link    Dynamic Controls
Clicking "Dynamic Loading" link    Dynamic Loading
Clicking "Entry Ad" link    Entry Ad
Clicking "Exit Intent" link    Exit Intent
Clicking "File Download" link    File Download
Clicking "Floating Menu" link    Floating Menu
Clicking "Forgot Password" link    Forgot Password
Clicking "Form Authentication" link    Form Authentication
Clicking "Frames" link    Frames
Clicking "Geolocation" link    Geolocation
Clicking "Horizontal Slider" link    Horizontal Slider
Clicking "Hovers" link    Hovers
Clicking "Infinite Scroll" link    Infinite Scroll
Clicking "Inputs" link    Inputs
Clicking "JQuery UI Menus" link    JQuery UI Menus
Clicking "JavaScript Alerts" link    JavaScript Alerts
Clicking "JavaScript onload event error" link    JavaScript onload event error
Clicking "Key Presses" link    Key Presses
Clicking "Large & Deep DOM" link    Large & Deep DOM
Clicking "Multiple Windows" link    Multiple Windows
Clicking "Nested Frames" link    Nested Frames
Clicking "Notification Messages" link    Notification Messages
Clicking "Redirect Link" link    Redirect Link
Clicking "Secure File Download" link    Secure File Download
Clicking "Shadow DOM" link    Shadow DOM
Clicking "Shifting Content" link    Shifting Content
Clicking "Slow Resources" link    Slow Resources
Clicking "Sortable Data Tables" link    Sortable Data Tables
Clicking "Status Codes" link    Status Codes
Clicking "Typos" link    Typos
Clicking "WYSIWYG Editor" link    WYSIWYG Editor
