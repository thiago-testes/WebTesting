*** Settings ***
Documentation    Essa suíte testa o site do Kabum.com.br
Resource         kabum_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Automacao FrontEnd
    [Documentation]  Esse teste verifica se está inserindo um produto no carrinho do site kabum
    ...              e valido se o produto foi inserido no carrinho corretamente
    [Tags]           compra_produto  carrinho
    Acesso o site www.kabum.com.br
    Realizo uma busca pelo termo "notebook"
    Seleciono o primeiro produto da lista
    Digitar CEP e validar valores de frete
    Fechar tela de opções de frete
    Adicionar produto ao carrinho
    Selecionar garantia estendida    
    Ir para o carrinho
    Validar produto no carrinho
