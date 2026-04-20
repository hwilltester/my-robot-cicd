*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google And Search
    # ၁။ Browser ကို ဖွင့်မယ် (Cloud မှာ run မှာမို့လို့ headlesschrome လို့ သုံးရပါမယ်)
    Open Browser    https://google.com    headlesschrome
    
    # ၂။ Search box မှာ စာရိုက်မယ်
    Input Text      name=q    Robot Framework
    
    # ၃။ Enter နှိပ်မယ်
    Press Keys      name=q    ENTER
    
    # ၄။ Page ထဲမှာ Robot Framework ဆိုတဲ့ စာသား ပါမပါ စစ်မယ်
    Page Should Contain    Robot Framework
    
    # ၅။ Browser ကို ပိတ်မယ်
    Close Browser
