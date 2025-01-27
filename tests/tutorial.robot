*** Settings ***
Library  AppiumLibrary  10
Library  CustomLibrary.py
Resource  operations.robot
Suite Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=device
             ...  udid=54a9663d
             ...  app=C:/Users/drewspio/Desktop/robot/robot_tutorial/mobile-debug.apk
             ...  automationName=uiautomator2
Suite Teardown  Close Application

*** Test Cases ***
Robot Is Using Custom Library
    Print Message

App Presents The Calculator Screen When Launches
    Page Should Contain Element  id=digit_7
    Page Should Contain Element  id=digit_5
    Page Should Contain Element  id=digit_3
    Page Should Contain Element  id=del
    Page Should Contain Element  id=op_div
    Page Should Contain Element  id=op_add

App Presents The Advanced Tab
    Swipe By Percent  50  50  10  50
    Wait Until Page Contains Element  id=fun_sin
    Wait Until Page Contains Element  xpath=//android.widget.Button[@content-desc='pi']
    Swipe  500  1097  650  1097

App Should Do "Add" Operation
    Operation  digit_9  op_add  digit_8  17

App Should Show Result in HEX
    Swipe By Percent  50  50  10  50
    Tap  fab
    Wait Until Element Is Visible  btn_hex
    Tap  btn_hex
    Wait Until Element Is Visible  hex
    Tap  hex
    Element Should Contain Text  info  HEX
    Element Should Contain Text  formula  11
    Swipe  500  1097  650  1097

App Should Clear Screen
    Tap  clr
    Element Should Contain Text  formula  ${EMPTY}

App Should Do "Add" Operation in HEX
    Operation  digit_7  op_add  digit_3  A
