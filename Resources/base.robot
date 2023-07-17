*** Settings ***
Resource        ../Data/data.robot
Library         AppiumLibrary
Library         OperatingSystem
Library         Process
Library         String



*** Variables ***
${APPIUM_COMMAND}    appium -p ${AppiumPort}

*** Keywords ***
Start Appium
    Run And Return Rc   ${APPIUM_COMMAND}
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
    [Documentation]    Arrêter appium server
    Run And Return Rc     taskkill /F /IM node.exe

Launch App
  [Documentation]    Lancer App en Local
  Open Application
  ...    ${Hub}
  ...    automationName=${ANDROID_AUTOMATION_NAME}
  ...    platformName=${ANDROID_PLATFORM_NAME}
  ...    platformVersion=${ANDROID_PLATFORM_VERSION}
  ...    app=${ANDROID_APP}
  #...  noReset=true

Launch App Browserstack
  [Documentation]    Lancer App dans BrowserStack
  Open Application
  ...    ${REMOTE_URL}
  ...    automationName=${ANDROID_AUTOMATION_NAME}
  ...    platformName=${ANDROID_PLATFORM_NAME}
  ...    platformVersion=${ANDROID_PLATFORM_VERSION_BROWSERSTACK}
  ...    deviceName=${ANDROID_DEVICENAME_BROWSERSTACK}
  ...    app=${ANDROID_APP_BROWSERSTACK}


Launch App Browserstack In Parallel
  [Documentation]    Lancer App dans BrowserStack sur plusieurs devices en parallèle
  Open Application
  ...    ${REMOTE_URL}
  ...    automationName=${ANDROID_AUTOMATION_NAME}
  ...    platformName=${ANDROID_PLATFORM_NAME}
  ...    deviceName=${bs_device}
  ...    app=${ANDROID_APP_BROWSERSTACK}
  ...    build=RobotFramework   #les tests seront regroupés dans un build depuis browserstack avec le nom Robotframework


Close App
    Close Application