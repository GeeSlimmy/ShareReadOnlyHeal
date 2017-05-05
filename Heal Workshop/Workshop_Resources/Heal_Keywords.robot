*** Settings ***
Resource          Heal_Scalers.robot

*** Keywords ***
Click Already Have An Account Log In Link
    [Arguments]    ${EMPTY}
    [Documentation]    Click on Already Have An Account Log In Link.
    Click Link    ${heal_register.already_have_an_account_log_in}
    Utility Set Message    ${EMPTY}    yes

Click Create Account Button
    [Documentation]    Click on Create Account Button.
    Click Button    ${heal_register.create_account}

Click Nondiscrimination Notice Link
    [Documentation]    Click on Nondiscrimination Notice Link.
    Click Link    ${heal_register.nondiscrimination_notice}

Click Notice Of Privacy Practices Link
    [Documentation]    Click on Notice Of Privacy Practices Link.
    Click Link    ${heal_register.notice_of_privacy_practices}

Click Privacy Policy Link
    [Documentation]    Click on Privacy Policy Link.
    Click Link    ${heal_register.privacy_policy}

Click Terms Of Service Link
    [Documentation]    Click on Terms Of Service Link.
    Click Link    ${heal_register.terms_of_service}

Fill
    [Documentation]    Fill every fields in the page.
    Heal_Register.Set First Name Text Field
    Heal_Register.Set Last Name Text Field
    Heal_Register.Set Email Email Field
    Heal_Register.Set Password Password Field
    Heal_Register.Set Confirm Password Password Field
    Heal_Register.Set Phone Number Text Field
    Heal_Register.Set Zipcode Text Field

Fill And Submit
    [Documentation]    Fill every fields in the page and submit it to target page.
    Heal_Register.Fill
    Heal_Register.Submit

Set Confirm Password Password Field
    [Arguments]    ${confirm_password_value}=${DATA['CONFIRM_PASSWORD']}
    [Documentation]    Set value to Confirm Password Password field.
    Input Text    ${heal_register.confirm_password}    ${confirm_password_value}

Set Email Email Field
    [Arguments]    ${email_value}=${DATA['EMAIL']}
    [Documentation]    Set value to Email Email field.
    Input Text    ${heal_register.email}    ${email_value}

Set First Name Text Field
    [Arguments]    ${first_name_value}=${DATA['FIRST_NAME']}
    [Documentation]    Set value to First Name Text field.
    Input Text    ${heal_register.first_name}    ${first_name_value}

Set Last Name Text Field
    [Arguments]    ${last_name_value}=${DATA['LAST_NAME']}
    [Documentation]    Set value to Last Name Text field.
    Input Text    ${heal_register.last_name}    ${last_name_value}

Set Password Password Field
    [Arguments]    ${password_value}=${DATA['PASSWORD']}
    [Documentation]    Set value to Password Password field.
    Input Text    ${heal_register.password}    ${password_value}

Set Phone Number Text Field
    [Arguments]    ${phone_number_value}=${DATA['PHONE_NUMBER']}
    [Documentation]    Set value to Phone Number Text field.
    Input Text    ${heal_register.phone_number}    ${phone_number_value}

Set Zipcode Text Field
    [Arguments]    ${zipcode_value}=${DATA['ZIPCODE']}
    [Documentation]    Set value to Zipcode Text field.
    Input Text    ${heal_register.zipcode}    ${zipcode_value}

Submit
    [Documentation]    Submit the form to target page.
    Heal_Register.Click Create Account Button

Verify Page Loaded
    [Arguments]    ${Verify_Text_On_Page_Load}
    [Documentation]    Verify that the page loaded completely.
    Utility Page Should Contain    ${Verify_Text_On_Page_Load}

Verify Page Url
    [Documentation]    Verify that current page URL matches the expected URL.
    Location Should Contain    ${heal_register.page_url}

Verify Page Error Validation
    Utility Element Should Contain    ${heal_register.error_validation}    First Name Is Required
    Utility Set Message    The error validation First Name Is Required appears on the page.    yes
