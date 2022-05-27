* Settings *
Documentation    New Pet

Resource    ${EXECDIR}/resources/Base.robot

* Test Cases *

New Pet

    ${payload}          Get Json        pet            nick.json
    ${response}         POST New Pet    ${payload}
    Status Should Be    200             ${response}