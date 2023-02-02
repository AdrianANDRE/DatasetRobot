*** Settings ***
Documentation    Test Robot BDD
Metadata         ID                           264
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Library          squash_tf.TFParamService
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test Robot BDD
    [Documentation]    Test Robot BDD

    &{dataset} =    Retrieve Dataset

    Given Voici une variable "${dataset}[param]"


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_264_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_264_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_264_SETUP_VALUE} =    Get Variable Value    ${TEST_264_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_264_SETUP_VALUE is not None    Run Keyword    ${TEST_264_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_264_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_264_TEARDOWN}.

    ${TEST_264_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_264_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_264_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_264_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}

Retrieve Dataset
    [Documentation]    Retrieves Squash TM's datasets and stores them in a dictionary.
    ...
    ...                For instance, datasets containing 3 parameters "city", "country" and "currency"
    ...                have been defined in Squash TM.
    ...
    ...                First, this keyword retrieves parameter values from Squash TM
    ...                and stores them into variables, using the keyword 'Get Test Param':
    ...                ${city} =    Get Test Param    DS_city
    ...
    ...                Then, this keyword stores the parameters into the &{dataset} dictionary
    ...                with each parameter name as key, and each parameter value as value:
    ...                &{dataset} =    Create Dictionary    city=${city}    country=${country}    currency=${currency}

    ${param} =    Get Test Param    DS_param

    &{dataset} =    Create Dictionary    param=${param}

    RETURN    &{dataset}
