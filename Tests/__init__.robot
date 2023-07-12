*** Settings ***
Resource        ../Resources/base.robot

Test Setup       Run Keywords      base.Start Appium    AND    base.Launch App
#Test Setup       Run Keyword         Launch app
#Test Setup       Run Keyword         base.Start Appium

Test Teardown    Run Keywords        Close App   AND   Stop Appium
#Test Teardown    Close Application
#Test Teardown    Stop Appium
