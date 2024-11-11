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
${BASE_URL}    https://www.google.com/
${DEMO_NOP}    https://www.nopcommerce.com/


*** Test Cases ***
Google Test
    GET    ${BASE_URL}   params=query-ciao    expected_status=200
    Log Test Success

Google Test 2
    RequestsLibrary.GET    ${BASE_URL}   params=query-ciao    expected_status=200

DemoNOP Test 1
    Open Browser    ${DEMO_NOP}    chrome

*** Keywords ***

Log Test Success
    Log    Test ran successfully.