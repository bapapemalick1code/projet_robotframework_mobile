*** Settings ***
Resource        ../Data/data.robot
Library         AppiumLibrary
Library         OperatingSystem
Library         Process
Library         String

*** Variables ***
${APPIUM_COMMAND}    appium -p 4723

*** Keywords ***
Start Appium
    Run And Return Rc   ${APPIUM_COMMAND}
    #Start Process    appium -p 4723
    Log To Console       Started

#Start Appium
     #Print User Profile Path
   # ${userprofile}    Run    python -c "import os; print(os.path.expanduser('~'))"   # Récuperer le chemin C:\Users\monsh dans La variable ${userprofile}
   # ${userprofile}    Replace String    ${userprofile}    \\    /                    # Remplacer les antislashs par des slashs
   # Log    User Profile Path: ${userprofile}
   # Log    User Profile Path 2: ${userprofile}/AppData/Roaming/npm/appium.cmd
   # Start Process   ${userprofile}/AppData/Roaming/npm/appium.cmd  -p 4723
    #Run And Return Rc   ${userprofile}/AppData/Roaming/npm/appium.cmd -p 4723
    #Start Process   ${userprofile}/AppData/Roaming/npm/appium.cmd  -p 4723
    #Log To Console       Started


Stop Appium
    [Documentation]    Stops the running Appium server on port 4723
    Run And Return Rc     taskkill /F /IM node.exe


Launch App
  Open Application
  ...    ${Hub}
  ...    automationName=${ANDROID_AUTOMATION_NAME}
  ...    platformName=${ANDROID_PLATFORM_NAME}
  ...    platformVersion=${ANDROID_PLATFORM_VERSION}
  ...    app=${ANDROID_APP}
  #...  noReset=true


Close App
    Close Application