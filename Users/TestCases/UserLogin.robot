*** Settings ***
Library     Libs
Resource    ../Utils/UserDataGenerator.robot
Resource    ../Services/API/UserAPI.robot
Resource    ../Config/Common.robot
Resource    ../Services/UI/LoginUI.robot

*** Variables ***
${IncorrectLogin}   IncorrectLogin
${IncorrectPassword}    IncorrectPassword

*** Test Cases ***
TC1_New_created_user_able_to login
    [Setup]  Generate User Data And Create User
    Login UI  ${CMP_LOGIN_URL}  ${WEB_BROWSER}  ${user.login}   ${user.password}
    Check That User Able To Login
    [Teardown]  Close Browser And Delete User

TC2_Deleted_user_cannot_login
    [Setup]  Generate User Data And Create User
    Delete User API
    Login UI  ${CMP_LOGIN_URL}  ${WEB_BROWSER}  ${user.login}   ${user.password}
    Check That User Is Not Able To Login
    [Teardown]  Close Browser

TC3_User_could_get_proper_error_if_enter_incorrect_login
    [Setup]  Generate User Data And Create User
    Login UI   ${CMP_LOGIN_URL}  ${WEB_BROWSER}  ${IncorrectLogin}    ${user.password}
    Check That User Is Not Able To Login
    [Teardown]  Close Browser And Delete User

TC3_User_could_get_proper_error_if_enter_incorrect_password
    [Setup]  Generate User Data And Create User
    Login UI   ${CMP_LOGIN_URL}  ${WEB_BROWSER}  ${user.login}    ${IncorrectPassword}
    Check That User Is Not Able To Login
    [Teardown]  Close Browser And Delete User

*** Keywords ***
Generate User Data And Create User
    Generate User Data
    Create User API

Close Browser And Delete User
    Close Browser
    Delete User API