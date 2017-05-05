*** Settings ***
Library           Selenium2Library

*** Keywords ***
Global Suite Set up
    Open Browser    ${heal_global_login_url}    ${heal_global_login_browser}    None    ${heal_global_login_remoteurl}    ${heal_global_login_desiredcaps}
    Maximize Browser Window

Global Suite Tear Down
    Close All Browsers
