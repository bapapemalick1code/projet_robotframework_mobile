*** Settings ***
Resource        ../Resources/base.robot

#Test Setup       Run Keywords      base.Start Appium    AND    base.Launch App
#Test Setup       Run Keyword         Launch App Browserstack In Parallel
#Test Setup       Run Keyword          Launch App Browserstack
Test Setup       Run Keyword         Launch App

#Test Teardown    Run Keywords        Close App   AND   Stop Appium
Test Teardown    Close Application
#Test Teardown    Stop Appium
