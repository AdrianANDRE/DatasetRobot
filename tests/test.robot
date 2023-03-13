*** Settings ***
Library    squash_tf.TFParamService

*** Test Cases ***
test
    ${test} =    Get Test Param    DS_test
    &{dataset} =    Create Dictionary    test=${test}
    Log To Console    ${dataset}[test]
