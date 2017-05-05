# ShareReadOnlyHeal
This is a read only view of a repository designed to demo python with robotframework solution integrated with saucelabs.


# Overall Test Focus and Test Instructions:

# == TEST \ FOCUS ==
Go to patient.heal.com/register and \ come up with a small demo of test framework you would use to automate \ and upload it in git and send us the link . The home work will be evaluated on the following
- How easy to set up and run your code ? Clarity of instruction- How portable your code is?-How easy it is to scale and add test or maintain ?- How easy to understand the flow by a manual QA or product person?

#  Bonus point :
If you can integrate with a cloud service like sauelabsIf you can find and report bug on any our platform in a clear , precise bug reportAPI automation or test casing sample ( you can proxy and look at the calls)

#  == TEST INSTRUCTIONS ==
You can run this test with pybot module by passing the arguments in the Run tab of RIDE IDE or CMD and terminal on MAC OS using pybot or using Pycharm IDE running pybot with desired arguments below.
-d TestResults -i POSITIVETEST -v heal_global_login_profile:maclionChrome
-d TestResults -i NEGITIVETEST -v heal_global_login_profile:maclionChrome

# == BUG REPORT ==
The letter "i" is appearing as capital for the word "is" on all the error valiations.

1. Login to patient.head.com/register
2. Click on the Create New Account button.
3. Observe the error messages and the word "Is" with captial "I".

Expected Result: The word "Is" should have a lower case "i"
Actual Result: The word "Is" shows with a capital "I" for all error message here.
