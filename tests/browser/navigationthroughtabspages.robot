*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser    https://dev.agnoshealth.com/ai_dashboard/login/    firefox

*** Variables ***
${EMAIL}    test@gmail.com
${PASSWORD}      12345
*** Test Cases ***
User Login      #Test Case ID ATC002 Automate user login functionality
    Input Text    id=Email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//button[@class='css-j6xc82']
    Wait Until Page Contains    Diagnosis List   timeout=20
Navigation Through Tabs/Pages      #Test Case ID ATC004 Automate navigation through different tabs/pages
    click element    xpath=(//div[normalize-space()='In progress'])[1]
    Wait Until Page Contains Element    xpath=(//div[normalize-space()='In progress'])[1]  20s
    click element    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[3]
    Wait Until Page Contains Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[3]      20s
Search for a Record      #Test Case ID ATC005 Automate search functionality
    input text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']   Test
    click button    xpath=//button[@class='css-bk56ep']
    Wait Until Page Contains    Test    10s
Filter Records by Triages, Dates, or Channels      #Test Case ID ATC006 Automate filter functionality
    Click Element    xpath=//img[@alt='calendar']
    Click Element     xpath=//button[@class='rdp-button_reset rdp-button rdp-day'][normalize-space()='1']
    Click Element     xpath=//button[normalize-space()='11']
    Click Element    xpath=//button[@class='css-4qbi1b']
    Wait Until Page Contains    02/07/2024    10s
Download Records      #Test Case ID ATC007 Automate download functionality
    Click Element    xpath=//div[normalize-space()='Download']
    Click Element    xpath=//button[@class='css-15phsie']
    Wait Until Page Contains      Download CSV file successfully      20s

