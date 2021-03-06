*** Settings ***
Documentation   Login tests
Resource    ../Application/Common.robot
Resource    ../Application/App01.robot


Suite Setup     Common.Setup Testsuite  #Run once before all tests
Test Setup      Common.Setup Test       #Run before every test
Test Teardown   Common.Teardown Test    #Run after every test
Suite Teardown  Common.Teardown Testsuite    #Run once after all tests


*** Variables ***


*** Test Cases ***
Login test 1
    [Documentation]     Valid login
    [Tags]    DEBUG

    App01.LoginWithCredentials      test@email.com      abcabc
    App01.IsLoggedIn2
    App01.LoginWithCredentials      test@email.com      abcabc

Set Webdriver
    [Tags]    test
    App01.Set Driver            ${COMMON_WEBDRIVER}

Login website
    [Tags]    test2
    App01.Login

Test method
    [Tags]    test
    App01.Test Method8

Logout website
    [Tags]    test
    App01.Logout

Test method
    [Tags]    test2
    App01.Test Method2
    App01.Test Method3
    App01.Test Method4
    App01.Test Method5
    App01.Test Method6
    App01.Test Method7




*** Keywords ***


