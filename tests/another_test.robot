*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Check Wikipedia
    Open Browser    https://wikipedia.org    headlesschrome
    # 'The Free Encyclopedia' ကို တမင် 'Wrong Text' လို့ ပြောင်းလိုက်ပါ
    Page Should Contain     The Free Encyclopedia 
    Close Browser
