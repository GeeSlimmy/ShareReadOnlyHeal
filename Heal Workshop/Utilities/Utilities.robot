*** Settings ***
Library           Selenium2Library

*** Keywords ***
Utility Set Message
    [Arguments]    ${testMsg}    ${append}
    Set Test Message    ${testMsg}    ${append}

Utility Page Should Contain
    [Arguments]    ${text}    ${timeout}=1 min
    Wait Until Page Contains    ${text}    ${timeout}
    Utility Set Message    The text ${text} appears fine on the page.    yes

Utility Element Should Contain
    [Arguments]    ${text_locator}    ${expected_text}
    Element Should Contain    ${text_locator}    ${expected_text}    The text appears fine.
