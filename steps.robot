*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_test}            https://qa.putraprima.id/

*** Keywords ***
Open Webpage TestSevima
    Open Browser    ${url_test}    chrome
    Maximize Browser Window
    Sleep    5

Check Text
    Element Should Be Visible    xpath://html/body/div[1]/div/div/div[1]
    Element Should Contain    xpath://html/body/div[1]/div/div/div[1]/h5    Kalkulator Faktorial

Input Integer
    Element Should Be Visible    id:input
    Input Text    id:input    3

Input and Submit
    Click Button    id:hitung

Click Link Term of Service
    Click Link    xpath://html/body/div[1]/div/div/div[2]/a[1]

Click Link Privacy Policy
    Click Link    xpath://html/body/div[1]/div/div/div[2]/a[2]
    Sleep    5

Negative Input Text
    Open Browser    ${url_test}    chrome
    Maximize Browser Window
    Element Should Be Visible    id:input
    Input Text    id:input    tiga
    Click Button    id:hitung
    Sleep    5
    Close Browser

Negative Input Simbol
    Open Browser    ${url_test}    chrome
    Maximize Browser Window
    Element Should Be Visible    id:input
    Input Text    id:input    !3
    Click Button    id:hitung
    Sleep    5