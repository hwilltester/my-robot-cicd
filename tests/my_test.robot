*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google And Search
    # ၁။ Browser ကို ဖွင့်ပြီး window ကို အပြည့်ချဲ့ထားမယ်
    Open Browser    https://google.com    headlesschrome
    Maximize Browser Window
    
    # ၂။ စာမရိုက်ခင် Google Search box ပေါ်လာအောင် ခဏစောင့်မယ်
    Wait Until Page Contains Element    name=q    timeout=10s
    
    # ၃။ စာရိုက်ပြီး Enter ခေါက်မယ်
    Input Text      name=q    Robot Framework
    Press Keys      name=q    ENTER
    
    # ၄။ ရလဒ်တွေ ထွက်လာအောင် (၃ စက္ကန့်ခန့်) ခဏစောင့်ပေးမယ် (ဒါမှမဟုတ် စာသားပေါ်လာတဲ့အထိ စောင့်မယ်)
    Wait Until Page Contains    Robot Framework    timeout=10s
    
    # ၅။ စာသားပါတာ သေချာပြီဆိုမှ အောင်မြင်ကြောင်းပြမယ်
    Page Should Contain    Robot Framework
    
    [Teardown]    Close Browser
