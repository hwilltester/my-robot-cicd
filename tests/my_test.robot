*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/variables.yaml 

*** Test Cases ***
Simple Web Test With Variables
    # အသေမရေးတော့ဘဲ Variable နာမည်တွေကိုပဲ သုံးပါမယ်
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain    ${EXPECTED_TITLE}
    [Teardown]    Close Browser

Simple Web Test
    [Tags]    Smoke
    Open Browser    https://example.com    headlesschrome
    Page Should Contain    Example Domain
    Close Browser

Verify Page Header
    [Tags]    Regression
    Open Browser    https://example.com    headlesschrome
    Element Text Should Be    tag=h1    Example Domain
    Close Browser



