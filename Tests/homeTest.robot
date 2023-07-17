*** Settings ***
Resource        ../Data/data.robot
Resource        ../Resources/Page/navigate.robot
Resource        ../Resources/Page/messagerie.robot
Resource        ../Resources/base.robot

*** Test Cases ***
Demarrage
  [Tags]        test_001
  Navigate.Onboarding
  #Messagerie.Inscription    ${Username}




