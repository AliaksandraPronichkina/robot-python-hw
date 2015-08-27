*** Settings ***
Library           Collections
Library           Libs
Resource          ../../Config/Common.robot


*** Keywords ***
Create User API
    ${user}=    create user object    ${userName}   ${userPassword}   ${userEmail}   ${firstName}   ${lastName}
    ${userId}=   create user     ${HOST}     ${PORT}   ${ADMIN_USER}    ${ADMIN_PASSWORD}     ${user}
    ${user.userId}=   Set Variable     ${userId}
    Set Suite Variable  ${user}

Delete User API
    ${status}=    delete user   ${HOST}     ${PORT}   ${ADMIN_USER}    ${ADMIN_PASSWORD}    ${user.userId}
    Should be equal  ${status}    Accepted
