*** Settings ***
Library    OperatingSystem

*** Variables ***
${PATH_TO_CHECK}    c:\\temp

*** Test Cases ***
Check Host Configuration
    [Documentation]    Check config...
    # Check existence of c:\temp folder
    Should Exists    ${PATH_TO_CHECK}
    Check Host Date Is    2015

*** Keywords ***
Check Host Date Is
    [Documentation]    Check date...
    [Arguments]    ${YEAR}
    ${host_year}=    Get Time    year
    Should Be Equal    ${host_year}    ${YEAR}