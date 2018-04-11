*** Settings ***

Documentation    Simple functional test for homepage

Library    Process
Library    Selenium2Library
Library    XvfbRobot
Suite Setup    Start Application
Suite Teardown    Stop Application


*** Variables ***

${SERVER_URL}=    http://localhost:5000


*** Test Cases ***

Homepage
    [Setup]    Start Virtual Display    1024    768
    Given user is anonymous
    When user browses to application homepage
    Then Page Should Contain    FlexFieldDB homepage
    [Teardown]    Close All Browsers


*** Keywords ***

Start Application
    ${handle}=    Start Process    flexfielddb
    Set Suite Variable    ${HANDLE}    ${handle}

Stop Application
    Terminate Process    ${HANDLE}

User Is Anonymous
    Open Browser    http://example.org

User Browses To Application Homepage
    Go To    ${SERVER_URL}
