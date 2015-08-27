*** Settings ***
Library           Selenium2Library
Resource          ../../Config/Common.robot

*** Variables ***
${USERNAME_TEXTBOX_LOCATOR}    j_username
${PASSWORD_TEXTBOX_LOCATOR}    j_password
${LOGIN_BUTTON_LOCATOR}    //button[@type='submit']
${LOGO}     //a[@class='logoLink']/img
${ERROR_MESSAGE_LOCATOR}    //font[text()='Incorrect login or password.']

*** Keywords ***
Open Login Page
    [Arguments]    ${loginUrl}    ${browser}
    Set Selenium Speed    ${SELENIUM_SPEED}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Set Selenium Timeout    ${SELENIUM_DEFAULT_TIMEOUT}
    Open Browser    ${loginUrl}    ${browser}
    Maximize Browser Window
    Page Should Contain Button    ${LOGIN_BUTTON_LOCATOR}

Login
    [Arguments]    ${login}    ${password}
    Input Text    ${USERNAME_TEXTBOX_LOCATOR}    ${login}
    Input Password    ${PASSWORD_TEXTBOX_LOCATOR}    ${password}
    Click Button    ${LOGIN_BUTTON_LOCATOR}

Login UI
    [Arguments]  ${loginUrl}    ${browser}   ${login}    ${password}
    Open Login Page  ${loginUrl}    ${browser}
    Login   ${login}    ${password}

Check That User Able To Login
    Page Should Contain Element     ${LOGO}

Check That User Is Not Able To Login
    Page Should Contain Element   ${ERROR_MESSAGE_LOCATOR}