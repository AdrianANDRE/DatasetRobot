*** Keywords ***
logto
    [Arguments]    ${arg}
    Log To Console    i am alive ${arg}
Voici une variable "${string}"
    logto    ${string}

testing
    logto    voici un test