*** Settings ***
Resource          Heal_Keywords.robot

*** Keywords ***
New_User_Clicks_On_Create_New_Account
    [Arguments]    ${Verify_Page_Load_Text}
    [Documentation]    URL and Text to be verified are required for this keyword.
    Verify Page Loaded    ${Verify_Page_Load_Text}
    Verify Page Url
    Click Create Account Button
    Verify Page Error Validation

New_User_Clicks_On_Login_Button
    Click Already Have An Account Log In Link    The Login page has loaded.
