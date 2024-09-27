*** Variables ***
${titleLoginPage}               xpath=//h2[contains(text(),'Login')]
${fillEmailAddress}             id=username
${fieldPassword}                id=password
${buttonAction}                 xpath=//button[contains(text(),'Masuk')]
${titlePopupSuksesLogin}        xpath=//div[@id='swal2-html-container']
${titlePopupGagalLogin}         xpath=//div[contains(text(),'Login gagal!')]
${pictureProfile}               xpath=//header/div[1]/nav[1]/div[2]/div[1]/ul[1]/li[1]/button[1]/div[1]/div[1]
${buttonLogout}                 xpath=//button[contains(text(),'Log Out')]
${buttonOK}                     xpath=//button[contains(text(),'OK')]
${descriptionPopupLogout}       xpath=//div[@id='swal2-html-container']
${buttonSignIn}                 xpath=//button[contains(text(),'Masuk')]
${fieldUsername}                id=user-name


#================================================================    


${fieldUsername_Swaglabs}        xpath=//input[@id='user-name']
${fieldPassword_Swaglabs}        id=password
${buttonLogin}                   id=login-button
${verifyErorrMessage}            xpath=//h3[@data-test='error']

