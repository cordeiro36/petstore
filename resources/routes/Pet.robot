* Settings *
Documentation    Implementação da Rota /pet

* Keywords *
POST New Pet
    [Arguments]    ${payload}

    ${response}    POST
    ...            ${base_url}/pet
    ...            json=${payload}
    ...            expected_status=any

    [return]    ${response}

PUT New Pet
    [Arguments]    ${payload}

    ${response}    PUT
    ...            ${base_url}/pet
    ...            json=${payload}
    ...            expected_status=any

    [return]    ${response}    