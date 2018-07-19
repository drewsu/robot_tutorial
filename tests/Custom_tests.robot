*** Settings ***
Library  CustomLibrary.py
Library  BuiltIn

*** Test Cases ***
Custom Library Should Print Message
    Print Message

Message Should Be Logged To Console
    Log To Console  jakas wiadomosc
