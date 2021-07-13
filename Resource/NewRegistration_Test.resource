*** Settings ***
Library      FakerLibrary
Library      SeleniumLibrary


*** Variables ***
${URL}     http://192.168.43.55:8080/
${BROWSER}      CHROME
${REGISTER_BUTTON}  xpath://a[contains(text(),'Register')]
${USER_NAME}  xpath://input[@name='username'][@id='username']
${USER_PASSWORD}  xpath://input[@type='password'][@id='password']
${FIRST_NAME}  xpath://input[@type='firstname'][@name='firstname']
${LAST_NAME}  xpath://input[@type='lastname'][@name='lastname']
${INPUT_PHONE}  xpath://input[@type='phone'][@name='phone']
${REGISTER}  xpath://input[@type='submit'][@value='Register']
# EXISTING USER LOGIN
${LOGIN_USERNAME}  xpath://input[@name='username'][@id='username']
${LOGIN_PASSWORD}   xpath://input[@id='password']
${CLICK_LOGIN}  xpath://a[contains(text(),'Log In')]
${LOGIN_USER_INFORMATION}  xpath://input[@type='submit'][@value='Log In']
${LOG_OUT}  xpath://a[contains(text(),'Log Out')]



*** Keywords ***
Navigate to Application Homepage & Register successfully
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  ${REGISTER_BUTTON}
    Click Element  ${USER_NAME}
    Set Selenium speed  0.2

    #${Username}=   FakerLibrary.Username
    #Log    ${Username}
    #Set Test Variable    ${Username}
    #Set Selenium Speed    1
    #Input Text  xpath://input[@name='username'][@id='username']    ${Username}
    Input Text  ${USER_NAME}    EmmaAngel

    Input Text  ${USER_PASSWORD}      Admin123
    Input Text  ${FIRST_NAME}     Emmanuel
    Input Text  ${LAST_NAME}    Isong
    Input Text  ${INPUT_PHONE}    1234567
    Click Element  ${REGISTER}

Existing User Login
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  ${CLICK_LOGIN}
    Click Element  ${LOGIN_USERNAME}
    Set Selenium speed  0.5
    Input Text  ${LOGIN_USERNAME}   EmmaAngel
    Input Text  ${LOGIN_PASSWORD}     Admin123
    Click Element  ${LOGIN_USER_INFORMATION}
    Click Element  ${LOG_OUT}







