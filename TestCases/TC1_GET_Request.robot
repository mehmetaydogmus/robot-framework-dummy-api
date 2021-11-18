*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}     https://reqres.in
${spartans}     /api/unknown

*** Test Cases ***
GET_SPARTAN_INFO
   Create Session    myssion  ${base_url}
    ${response}=    get request     myssion     ${spartans}

    log to console    ${response.status_code}
    #log to console    ${response.content}
    #log to console    ${response.headers}

    #Validations
   #${status_code}=    convert to string   ${response.status_code}
   #should be equal     ${status_code}   200

   #${body}=    convert to string    ${response.content}
   #should contain     ${body}   Meade