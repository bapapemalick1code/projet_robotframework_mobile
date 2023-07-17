*** Settings ***
Library     AppiumLibrary
Variables   ../../PageObjects/locators.py

*** Keywords ***
Onboarding
    Wait Until Element Is Visible       ${id_btn_demarrer}     15s
    Click Element    ${id_btn_demarrer}
    Wait Until Element Is Visible    ${id_indicator_swipe}
    ${buttons}=    Run Keyword And Return Status    Page Should Not Contain Element    ${id_btn_valider}
    FOR    ${index}  IN RANGE    4
           Run Keyword If    ${buttons}    Swipe By Percent    90    50    10    50    200
           ...               ELSE             Exit For Loop
    END
    Click Element    ${id_btn_allow_notif}
    Click Element    ${id_btn_valider}
    Wait Until Element Is Visible    ${id_titre_popup}
    Wait Until Element Is Visible    ${id_skip_popup}
    Click Element   ${id_skip_popup}

Switch_mode
    [Arguments]    ${elementLocatorTitle}    ${expectedText_mode}   ${expectedText_title}   ${id_btn_switch_mode}
    ${actualText}    Get Text    ${xpath_titre_texte}
    Run Keyword If    "${expectedText_mode}" in "${actualText}"  Element Text Should Be    ${elementLocatorTitle}    ${expectedText_title}
    #...  ELSE
    #...  Run Keywords
    #...  Click Element  ${id_btn_switch_mode}
    #Wait Until Element Is Visible    locator


   # Run Keyword Unless    "${expectedText}" in "${actualText}"    Click Element    ${buttonLocator}
