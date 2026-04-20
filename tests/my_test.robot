*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login Test Success
    Open Browser    https://practicetestautomation.com    headlesschrome
    Input Text      id=username    student
    Input Text      id=password    Password123
    Click Button    id=submit
    Wait Until Page Contains    Logged In Successfully    timeout=10s
    [Teardown]    Close Browser
