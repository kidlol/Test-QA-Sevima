*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Open TestSevima
    Open Webpage TestSevima

Checking Teks Kalkulator Faktorial
    Check Text

Input Angka
    Input Integer

Input Angka dan Submit
    Input and Submit

Click Term of Service
    Click Link Term of Service

Click Privacy Policy
    Click Link Privacy Policy