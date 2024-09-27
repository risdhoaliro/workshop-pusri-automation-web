*** Settings ***
Documentation           Keyword gesrneral for Teman Pusri website

Library                 String
Resource                ../General/env.robot
Resource                ../General/commands.robot
Resource                ../General/element.robot
Resource                ../General/text.robot


*** Keywords ***
Open Website with Arguments
    [Arguments]                               ${browser}                      ${resolution}
    Open Browser                              about:blank                     ${browser}
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
    set window size
    ...                                       ${BrowserWidth.${resolution}}
    ...                                       ${BrowserHeight.${resolution}}
    Go To                                     ${url.${environment}}

Open Website On Chrome Desktop
    Open Browser                              about:blank                     chrome
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
    set window size                          
    ...                                       ${BrowserWidth.desktop}
    ...                                       ${BrowserHeight.desktop}
    Go To                                     ${url.staging}

Open Website On Chrome Mobile
    Open Browser                              about:blank                     chrome
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
    set window size
    ...                                       ${BrowserWidth.mobile}
    ...                                       ${BrowserHeight.mobile}
    Go To                                     ${url.staging}

Open Website On Chrome Tablet
    Open Browser                              about:blank                     chrome
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
    set window size
    ...                                       ${BrowserWidth.tablet}
    ...                                       ${BrowserHeight.tablet}
    Go To                                     ${url.staging}

Open Website Alert Test On Chrome Desktop
    Open Browser                              about:blank                     chrome
    Delete All Cookies
    Set Selenium Timeout                      ${setSeleniumTimeOut}
    Set Browser Implicit Wait                 ${timeoutWait}
    set window size
    ...                                       ${BrowserWidth.desktop}
    ...                                       ${BrowserHeight.desktop}
    Go To                                     https://demoqa.com/alerts

End Website Test Case
    Delete All Cookies
    Close All Browsers
