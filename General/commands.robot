*** Settings ***
Documentation           Commands general for Teman Pusri website

Library                 SeleniumLibrary
Library                 String
Library                 DateTime
Resource                ../General/env.robot
Resource                ../General/element.robot
Resource                ../General/text.robot
Resource                ../General/keyword.robot


*** Keywords ***
Logout After Test Case
    Wait Until Element Is Visible             ${pictureProfile}               timeout=10
    Click Element                             ${pictureProfile}
    Wait Until Element Is Visible             ${buttonLogout}                 timeout=5
    Click Element                             ${buttonLogout}
    Wait Until Element Is Visible             ${descriptionPopupLogout}       timeout=10
    ${description_logout_message}             Get Text                        ${descriptionPopupLogout}
    Should Be Equal
    ...                                       ${description_logout_message}
    ...                                       ${descriptionLogout}
    Sleep                                     3
    Click Element                             ${buttonOK}
    Sleep                                     3
    End Website Test Case


#================================================================

Clear Field Username and Password
    Clear Element Text                             ${fieldUsername_Swaglabs}
    Clear Element Text                             ${fieldPassword_Swaglabs}
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
