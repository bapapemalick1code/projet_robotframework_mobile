*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/App/Android/occazio.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10
${ANDROID_DEVICENAME}   Pixel_3a_API_29_android_10
#${Hub}          http://127.0.0.1:${AppiumPort}/wd/hub   #pour appium 1.*
${Hub}          http://127.0.0.1:${AppiumPort}           #pour appium 2.0
${AppiumPort}    4723
