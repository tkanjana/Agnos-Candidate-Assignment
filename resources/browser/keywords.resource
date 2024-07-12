*** Settings ***
Library    SeleniumLibrary
Resource    variables.resource

*** Keywords ***
Open SignUp
    Open Browser    ${SignUp}    ${BROWSER}
Open Login
    Open Browser    ${Login}    ${BROWSER}