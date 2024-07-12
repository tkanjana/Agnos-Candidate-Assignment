*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser    https://dev.agnoshealth.com/ai_dashboard/agnos/sign_up    firefox

*** Variables ***
${EMAIL}    Test3@gmail.com
${PASSWORD}      A@123456
${COMFIRMPASSWORD}      A@123456

${EMAILLOGIN}    test@gmail.com
${PASSWORDLOGIN}      12345
*** Test Cases ***
User Registration   #Test Case ID ATC001 Automate user registration functionality
    Input Text    id=Email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Input Text    xpath=(//input[@id='password'])[2]    ${COMFIRMPASSWORD}
    Click Button    xpath=//button[@class='css-j6xc82']
    Wait Until Page Contains    Log-in   timeout=20
User Login      #Test Case ID ATC002 Automate user login functionality
    Open Browser    https://dev.agnoshealth.com/ai_dashboard/login/    firefox
    Input Text    id=Email    ${EMAILLOGIN}
    Input Text    id=password    ${PASSWORDLOGIN}
    Click Button    xpath=//button[@class='css-j6xc82']
    Wait Until Page Contains    Diagnosis List   timeout=20
User Logout      #Test Case ID ATC003 Automate user logout functionality
    click button    xpath=(//button[@class='css-iipby'])[1]
    Wait Until Page Contains    Log-in   timeout=20



