*** Settings ***
Library                 SeleniumLibrary
Library                 XML
Library                 SeleniumLibrary
Resource                ../General/element.robot
Resource                ../General/commands.robot
Resource                ../General/user.robot
Resource                ../General/text.robot

*** Keywords ***
The SauceDemo Login Page is Open
    Wait Until Element Is Visible             ${fieldUsername_Swaglabs}               timeout=10
    Wait Until Element Is Visible    ${fieldPassword_Swaglabs}                    timeout=10

An Invalid Username And a Valid Password Are Entered
    Input Username    ${wrongUsername}
    Sleep    3
    Input Password    ${validPassword}
    Sleep    3

An Error Message Should Be Displayed Saying "Epic sadface: Username and password do not match any user in this service"
    Wait Until Element Is Visible    ${verifyErorrMessage}            timeout=10
    ${erorr_message_one}    Get Text    ${verifyErorrMessage}

    Log    Comparing error messages:
    Log    Expected: ${erorr_message_do_not_match_any_user}
    Log    Actual: ${erorr_message_one}

    Should Be Equal    ${erorr_message_one}    ${erorr_message_do_not_match_any_user}
    Sleep    3

An Error Message Should Be Displayed Saying "Epic sadface: Username is required"
    Wait Until Element Is Visible    ${verifyErorrMessage}            timeout=10
    ${error_message_two}    Get Text    ${verifyErorrMessage}

    Log    Comparing error messages:
    Log    Expected: ${erorr_message_username_is_required}
    Log    Actual: ${error_message_two}

    Should Be Equal    ${error_message_two}    ${erorr_message_username_is_required}
    Sleep    3

The Username Field is Left Blank And A Valid Password Is Entered
    Input Password    ${validPassword}
    Sleep    5

The Login Button is Clicked
    Click Element    ${buttonLogin}
    Sleep    3

# Step

Input Username
    [Arguments]                               ${email}
    wait until element is visible             ${fieldUsername_Swaglabs}
    input text                                ${fieldUsername_Swaglabs}             ${email}

Input Password
    [Arguments]                               ${pass}
    wait until element is visible             ${fieldPassword_Swaglabs}
    input text                                ${fieldPassword_Swaglabs}                ${pass}
