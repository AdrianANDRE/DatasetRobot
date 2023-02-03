*** Keywords ***
logto
    [Arguments]    ${arg}
    Log To Console    i am alive ${arg}
Voici une variable "${dataset}[param]"
    logto    ${dataset}[param]
Voici une variable "Test ""
    logto    "
Voici une variable "Test '"
    logto    '
Voici une variable "Test ` echo test `"
    logto    ` echo test `
Voici une variable "Test $test"
    logto     dollar test
Voici une variable "Test & echo test"
    logto    & echo test
Voici une variable "Test ; echo toto"
    logto    ; echo toto
Voici une variable "Test | echo toto"
    logto    | echo toto
Voici une variable "Test echo test < /tmp"
    logto    echo test < /tmp
Voici une variable "Test echo test > /tmp"
    logto    echo test > /tmp
Voici une variable "Test ^"
    logto    ^
Voici une variable "Test %test%"
    logto    %test%
Voici une variable "Test ${echo test}"
    logto    ${echo test}
Voici une variable "Test backslash \\"
    logto    backslash
Voici une variable "Test slash /"
    logto    slash
Voici une variable "Test $(echo test)"
    logto    $(echo test)
Voici une variable "Test #test"
    logto    \#test
Voici une variable "Test 𨱏"
    logto    𨱏
Voici une variable "Test 👩‍❤️‍💋‍👨"
    logto    👩‍❤️‍💋‍👨
Voici une variable "Test [test]"
    logto    [test]
Voici une variable "Test ^^"
    logto    ^^
Voici une variable "Test "test""
    logto    "test"
Voici une variable "Test 'test'"
    logto    'test'
Voici une variable "Test \$test"
    logto    backslash dollar test
Voici une variable "Test ,.+-_~@€çé=àû*?!"
    logto    ,.+-_~@€çé=àû*?!
Voici une variable "Test ./test"
    logto    ./test