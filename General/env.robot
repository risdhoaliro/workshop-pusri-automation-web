*** Variables ***
&{browser}                  chrome=chrome
# ...    safari=safari
${timeoutWait}              5
${setSeleniumTimeOut}       30
${setImplicitWait}          5
${environment}              staging
&{url}                      debug=
...                         staging=https://www.saucedemo.com/v1/
...                         prod=
&{BrowserWidth}             desktop=1440                                mobile=411    tablet=768
&{BrowserHeight}            desktop=1120                                mobile=940    tablet=1024
${device}                   desktop
&{seleniumPort}             local=
# ...    jenkins=http://127.0.0.1:3333/wd/hub
