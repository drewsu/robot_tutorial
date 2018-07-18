*** Settings ***
Library  AppiumLibrary
Library  BuiltIn

*** Keywords ***
Equal
    [Arguments]  ${sum}
    Tap  eq
    Element Should Contain Text  formula  ${sum}
Operation
    [Arguments]  ${first_digit}  ${action}  ${second_digit}  ${sum}
    Tap  ${first_digit}
    Tap  ${action}
    Tap  ${second_digit}
    Equal  ${sum}
