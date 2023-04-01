*** Settings ***
Documentation       Open home page of The Internet herokuapp and open it's elements

Library             SeleniumLibrary
Library             OperatingSystem


*** Keywords ***
Open Homepage
    Open Browser    https://the-internet.herokuapp.com    gc

Open A/B Testing
    Click Link    Link:A/B Testing

Open Add/Remove Elements
    Click Link    Link:Add/Remove Elements

Open Basic Auth
    Click Link    Link:Basic Auth

Open Broken Images
    Click Link    Link:Broken Images

Open Challenging DOM
    Click Link    Link:Challenging DOM

Open Checkboxes
    Click Link    Link:Checkboxes

Open Context Menu
    Click Link    Link:Context Menu

Open Digest Authentication
    Click Link    Link:Digest Authentication

Open Disappearing Elements
    Click Link    Link:Disappearing Elements

Open Drag and Drop
    Click Link    Link:Drag and Drop

Open Dropdown
    Click Link    Link:Dropdown

Open Dynamic Content
    Click Link    name:Dynamic Content

Open Dynamic Controls
    Click Link    name:Dynamic Controls

Open Dynamic Loading
    Click Link    name:Dynamic Loading

Open Entry Ad
    Click Link    name:Entry Ad

Open Exit Intent
    Click Link    name:Exit Intent

Open File Download
    Click Link    name:File Download

Open File Upload
    Click Link    name:File Upload

Open Floating Menu
    Click Link    name:Floating Menu

Open Forgot Password
    Click Link    name:Forgot Password

User opens Form Authentication
    Click Link    Link:Form Authentication

Open Frames
    Click Link    name:Frames

Open Geolocation
    Click Link    name:Geolocation

Open Horizontal Slider
    Click Link    name:Horizontal Slider

Open Hovers
    Click Link    name:Hovers

Open Infinite Scroll
    Click Link    name:Infinite Scroll

Open Inputs
    Click Link    name:Inputs

Open JQuery UI Menus
    Click Link    name:JQuery UI Menus

Open JavaScript Alerts
    Click Link    name:JavaScript Alerts

Open JavaScript onload event error
    Click Link    name:JavaScript onload event error

Open Key Presses
    Click Link    name:Key Presses

Open Large & Deep DOM
    Click Link    name:Large & Deep DOM

Open Multiple Windows
    Click Link    name:Multiple Windows

Open Nested Frames
    Click Link    name:Nested Frames

Open Notification Messages
    Click Link    name:Notification Messages

Open Redirect Link
    Click Link    name:Redirect Link

Open Secure File Download
    Click Link    name:Secure File Download

Open Shadow DOM
    Click Link    name:Shadow DOM

Open Shifting Content
    Click Link    name:Shifting Content

Open Slow Resources
    Click Link    name:Slow Resources

Open Sortable Data Tables
    Click Link    name:Sortable Data Tables

Open Status Codes
    Click Link    name:Status Codes

Open Typos
    Click Link    name:Typos

Open WYSIWYG Editor
    Click Link    name:WYSIWYG Editor
