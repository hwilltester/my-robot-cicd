*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Simple Web Test
    Open Browser    https://example.com    headlesschrome
    Page Should Contain    Example Domain
    Close Browser

Verify Page Header
    Open Browser    https://example.com    headlesschrome
    Element Text Should Be    tag=h1    Example Domain
    Close Browser
