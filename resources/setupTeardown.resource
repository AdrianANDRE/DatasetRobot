*** Variables ***
${TEST_SETUP}    Setup
${TEST_TEARDOWN}    Teardown
*** Keywords ***
Setup
    Log To Console    i am alive
Teardown
    Log To Console    still alive