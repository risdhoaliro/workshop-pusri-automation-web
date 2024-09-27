*** Settings ***
Documentation           Keyword Test cases for login at swaglabs user Tablet website

Resource                ../../Pages/Login_Swaglabs.robot
Resource                ../../General/keyword.robot

Suite Setup             Open Website On Chrome Tablet
Test Teardown           Clear Field Username and Password
# Suite Teardown          Logout After Test Case

Force Tags              chrome_driver


*** Test Cases ***
Scenario: login with empty username
    Given the SauceDemo login page is open
    When The Username Field is Left Blank and A Valid Password Is Entered
    And The Login Button is Clicked
    Then An Error Message Should Be Displayed Saying "Epic sadface: Username is required"
    
Scenario: login with invalid credentials
    Given The SauceDemo Login Page is Open
    When An Invalid Username And a Valid Password Are Entered
    And The Login Button is Clicked
    Then An Error Message Should Be Displayed Saying "Epic sadface: Username and password do not match any user in this service"                                        