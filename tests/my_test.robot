*** Settings ***
Library    String

*** Test Cases ***
Check Robot Message
    ${text}=    Set Variable    Hello Robot
    Should Be Equal    ${text}    Hello Robot
