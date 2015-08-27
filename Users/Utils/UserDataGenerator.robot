*** Settings ***
Library           String
Library           Collections

*** Keywords ***

Generate User Data
    ${userName}    Generate Random String    6    [LETTERS]
    ${userRandomPassword}    Generate Random String    7    [LETTERS][NUMBERS]
    ${userPassword}   Convert To String      U1${userRandomPassword}
    ${userEmail}    Convert To String    ${userName}@clarabridge.com
    ${firstName}    Convert To String    ${userName}
    ${lastName}    Convert To String    ${userName}
    Set Suite Variable    ${userName}
    Set Suite Variable    ${userPassword}
    Set Suite Variable    ${userEmail}
    Set Suite Variable    ${firstName}
    Set Suite Variable    ${lastName}


