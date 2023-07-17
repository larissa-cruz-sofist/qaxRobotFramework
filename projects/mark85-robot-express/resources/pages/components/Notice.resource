*** Settings ***

Documentation            Ações e elementos do componente de notificacoes

Library                  Browser

*** Keywords ***
Notice shoulde be
    [Arguments]        ${expected_text}

    ${element}                     Set Variable                 css=.notice p

    Wait For Elements State        ${element}                   visible                5
    Get Text                       ${element}                   equal                  ${expected_text}