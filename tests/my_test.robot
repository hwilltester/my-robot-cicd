*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Simple Web Test
    Open Browser    https://example.com    headlesschrome
    Page Should Contain    Example Domain
    Close Browser
