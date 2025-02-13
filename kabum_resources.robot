*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                       https://www.kabum.com.br/
${CAMPO_BUSCA}               //input[@id='input-busca']
${TERMO_BUSCA}               notebook
${CEP}                       50010-000
${GARANTIA}                  24 Meses de garantia

*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome  options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acesso o site www.kabum.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${CAMPO_BUSCA}

Realizo uma busca pelo termo "notebook"
    Input Text                       xpath=//input[@id='input-busca']    ${TERMO_BUSCA}
    Wait Until Element Is Visible    xpath=(//div[contains(@class, 'sc-dd558cc4-7')])[1]    timeout=5s
    
Seleciono o primeiro produto da lista
    Click Element                       xpath=(//div[contains(@class, 'sc-dd558cc4-7')])[1]
    Wait Until Page Contains Element    xpath=//input[@id='inputCalcularFrete']

Aceitar Política de Cookies
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Entendi')]    timeout=10s
    Click Button                     xpath=//button[contains(text(), 'Entendi')]

Digitar CEP e validar valores de frete
    Input Text                  xpath=//input[@id='inputCalcularFrete']    ${CEP}
    Scroll Element Into View    xpath=//button[contains(text(), 'OK')]
    Execute JavaScript          document.evaluate("//button[contains(text(), 'OK')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();

Fechar tela de opções de frete
    Wait Until Element Is Visible    xpath=//button[contains(@class, 'sc-bBXrwG')]    timeout=10s
    Click Button                     xpath=//button[contains(@class, 'sc-bBXrwG')]

Adicionar produto ao carrinho
    Click Button                        xpath=//button[contains(text(), 'COMPRAR')]
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'flex') and contains(@class, 'flex-col') and contains(@class, 'gap-4')]

Selecionar garantia estendida
    Click Element     xpath=//input[@name='garantia' and @value='4205812']

Ir para o carrinho
    Click Button      xpath=//button[.//span[contains(text(), 'Adicionar serviços')]]

Validar produto no carrinho
    Wait Until Page Contains Element    xpath=//a[contains(@class, 'productName') and contains(text(), 'Notebook Samsung Galaxy Book3 360')]
