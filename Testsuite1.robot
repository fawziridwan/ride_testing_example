*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${button_sign_in}    Sign In
${url}            http://hr-apps.smtapps.net/login
${message}        //div[@class='ct-toast-success']//div[@class='ct-text-group']//div[@class='ct-text'][contains(text(),'Welcome Admin 1')]
@{AKUN}           hr@smooets.com    password
${email}          //div//input[@id='email']    # element textbox email
${password}       //div//input[@id='password']    # element textbox password

*** Test Cases ***
Test1
    [Tags]    Test1
    [Setup]    NavigateToHomepage
    SeleniumLibrary.Input Text    ${email}    ${AKUN}[0]
    SeleniumLibrary.Input Password    ${password}    ${AKUN}[1]
    SeleniumLibrary.Click Button    ${button_sign_in}
    Sleep    5s
    Close Browser
    [Teardown]    Close

*** Keywords ***
NavigateToHomepage
    Open Browser    ${url}    chrome

Close
    Close Browser
