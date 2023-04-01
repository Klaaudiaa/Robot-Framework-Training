*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Pages/HomePageKeywords.robot

Suite Setup         Open Browser on Homepage
Suite Teardown      Close All Browsers
