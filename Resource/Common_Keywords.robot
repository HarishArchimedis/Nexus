*** Settings ***
Variables    ../Data/Data.py
Variables    ../Data/Password.py
Variables    ../Data/Xpath.py
Variables    ../Data/lib.py
Library    SeleniumLibrary
Library    String
Library    ../Data/lib.py


*** Keywords ***
Launch the browser
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

Close the Browser
    Close Browser
Libraries
    my_function

Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${INPUT_Email_Xpath}    ${username}
    Input Password    ${INPUT_Password_Xpath}    ${password}
    
Wait Until the element visible then Click element
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}
