*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Common_Keywords.robot
Force Tags    TC001
Library     CryptoLibrary    variable_decryption=True
Suite Setup    Libraries
Suite Teardown    Un_Libraries



*** Test Cases ***
TestCase_001
    [Documentation]    Nexus_Application
    [Tags]    TC001
    Launch the browser
    Credentials    ${iyyappanemail}    ${iyyappanpassword}
    Wait Until the element visible then Click element    ${BTN_LOGIN}
    Close the Browser