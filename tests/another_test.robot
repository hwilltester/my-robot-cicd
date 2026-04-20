
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Check Wikipedia
    Open Browser    https://wikipedia.org    headlesschrome
    Page Should Contain    The Free Encyclopedia
    Close Browser
