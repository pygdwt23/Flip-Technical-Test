*** Settings ***
Library    RequestsLibrary
Library    FakerLibrary     WITH NAME   fake

*** Variables ***
${url}      https://reqres.in/

*** Test Cases ***
Get User List
    Create Session      reqres      ${url}
#    ${response}=    Get Request     reqres      /api/users
    ${response}=    Get Request    reqres    /api/users?page=2
    Log To Console      ${response.status_code}
    Log To Console      ${response.content}

    Should Be Equal As Strings    ${response.status_code}   200

# ============================================================= #

Post Create User
#Faker Generator Data
    ${name}=    fake.Name
    ${job}=    fake.Job

    Create Session    reqres    ${url}
    ${data}=    Create Dictionary    name=${name}       job=${job}
    ${headers}=     Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${response}=    POST On Session    reqres       /api/users      data=${data}        headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    Should Be Equal As Strings    ${response.status_code}       201
    ${res_body}=    Convert To String    ${response.content}
    Should Contain    ${res_body}       ${name}     ${job}