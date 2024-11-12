*** Settings ***
Documentation    Test for robot
...
Library    OperatingSystem
Library    DateTime
Library    String
Library    Collections
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${GOOGLE_URL}    https://www.google.com/
${SEARCH_TERM}    Selenium Test


*** Test Cases ***
Google Homepage Successful Load Test
    GET    ${GOOGLE_URL}   params=query-ciao    expected_status=200
    Log Test Success

Google Search With Search Term That Loads the Data Related to it Successfully Test
    Open Browser    ${GOOGLE_URL}    chrome
    Wait Until Element Is Visible    name:q     timeout=10s
    Input Text    name:q    ${SEARCH_TERM}
    Click Button   xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    Wait Until Page Contains    ${SEARCH_TERM}
    Log Test Success

*** Keywords ***

Log Test Success
    Log    Test ran successfully.