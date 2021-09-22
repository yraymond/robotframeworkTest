*** Settings ***
Library    RPA.PDF
Library    Collections

*** Variables ***
@{list}     111     222     333
&{dic}      a=111   b=222   c=333

*** Test Cases ***
TC1
    ${pageCount}    Get Number Of Pages    G:\\OneDrive - InfoVista\\Documents\\Vista Experience User Guide.pdf
    Log To Console  ${pageCount}

TC2
    ${text}     Get Text From Pdf   G:\\OneDrive - InfoVista\\Documents\\Vista Experience User Guide.pdf
    Log To Console    ${text}

TC3
    ${keys}     Get Dictionary Keys     ${dic}
    FOR    ${key}    IN    @{keys}
        Log To Console    ${dic}[${key}]
    END
    Log Dictionary    ${dic}