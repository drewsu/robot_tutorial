*** Settings ***
Library  AppiumLibrary  10
Resource  operations.robot
Suite Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=${deviceName}
             ...  udid=${deviceId}
             ...  app=${appBinary}
             ...  automationName=uiautomator2
Suite Teardown  Close Application

*** Test Cases ***
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

App Should Do Math Operation
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
