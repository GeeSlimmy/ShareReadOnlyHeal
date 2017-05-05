*** Settings ***
Documentation     *== TEST \ FOCUS ==*
...
...               Go to patient.heal.com/register and \ come up with a small demo of test framework you would use to automate \ and upload it in git and send us the link . The home work will be evaluated on the following
...
...               - How easy to set up and run your code ? Clarity of instruction
...               - How portable your code is?
...               -How easy it is to scale and add test or maintain ?
...               - How easy to understand the flow by a manual QA or product person?
...
...               Bonus point :
...
...               If you can integrate with a cloud service like sauelabs
...               If you can find and report bug on any our platform in a clear , precise bug report
...               API automation or test casing sample ( you can proxy and look at the calls)
...
...               == TEST INSTRUCTIONS ==
...
...               You can run this test with pybot module by passing the arguments in the Run tab of RIDE IDE or CMD using pybot or using Pycharm IDE running pybot with desired arguments below.
...
...               -d TestResults -i POSITIVETEST
...               -d TestResults -i NEGITIVETEST
...
...
...               == BUG REPORT ==
...
...               The letter "i" is appearing as capital for the word "is" on all the error valiations.
...
...               Login to patient.head.com/register
...               Click on the Create New Account button.
...               Observe the error messages and the word "Is" with captial "I".
...
...               Expected Result: The word "Is" should have a lower case "i"
...               Actual Result: The word "Is" shows with a capital "I" for all error message here.
Suite Setup       Global Suite Set up    # Navigates to a given URL set of URLs to support different test environments could be extended into a config file then used with pybot module.
Suite Teardown    Global Suite Tear Down    # Kills Browser
Resource          Workshop_Resources/Heal_Resources.robot
Resource          Global_Utilities/Global_Keywords.robot
Resource          Utilities/Utilities.robot

*** Variables ***

*** Test Cases ***
New_User_Forgets_To_Type_In_Required_Fields
    [Tags]    NEGATIVETEST
    New_User_Clicks_On_Create_New_Account    ${heal_register.page_loaded_text}

New_User_Tries_Clicking_On_Login_Button
    [Tags]    POSITIVETEST
    New_User_Clicks_On_Login_Button

*** Keywords ***
