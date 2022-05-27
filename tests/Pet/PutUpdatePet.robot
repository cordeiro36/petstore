* Settings *
Documentation    Update Pet

Resource         ${EXECDIR}/resources/Base.robot
Test Template    Attempt Login

* Test Cases *    json_file    status_code    message

Update an existing pet    nick.json          200     successful operation   
Invalid ID supplied       invalid_id.json    400     Invalid ID supplied
Pet not found             not_found.json     404     Pet not found


* Keywords *
Attempt Login
    [Arguments]    ${json_file}    ${status_code}    ${message}

    ${payload}          Get Json          pet            ${json_file}
    ${response}         PUT New Pet       ${payload}
    Status Should Be    ${status_code}    ${response}

  #  Should Be Equal    ${message}    ${response.json()}[error]    