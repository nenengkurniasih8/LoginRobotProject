*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login User Registered
  [documentation]  Login for user registered
  [tags]  regression
    Open Browser  https://www.bareksa.com/id/member/login  chrome
    Input Email    enengzulkopli8@gmail.com
    Input Password    enengzulkopli8
    Submit Credentials
    Portofolio Page Should Be Open

*** Keywords ***
Open Browser To Login Page
    Open Browser  https://www.bareksa.com/id/member/login  chrome

Input email
    [Arguments]    ${username}
    Input Text    email  enengzulkopli8@gmail.com

Input password
    [Arguments]    ${password}
    Input Text    password  enengzulkopli8

Submit Credentials
    Click Button    login-btn

Portofolio Page Should Be Open
    Title Should Be    Portofolio Page
