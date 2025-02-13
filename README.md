# Um Projeto de Automação de Teste de FrontEnd em Robot Framework
> Projeto para ajudar a criar um portfolio usando Robot Framework, Visual Studio Code, extensão TruePath, ChatGPT e navegador Chrome na versão 133 com compatibildade do Chromedriver na mesma versão.
>
> Por se tratar de uma versão inicial e com pouca experiência na tecnologia carece de ajustes na arquitetura do projeto e melhorias no código em busca de alcançar conjunto de boas práticas na escrita de software para obter uma maior legibilidade e manutenção.

## License/Licença do Projeto
© [Thiago Ferreira][(https://github.com/thiago-testes?tab=repositories)]

## Getting started
> Para tornar mais fácil para você começar a usar o seu GitHub, aqui está uma lista das próximas etapas recomendadas.

## Add your files
```
cd existing_repo
git remote add origin https://github.com/thiago-testes/WebTesting.git
git branch -M main
git push -uf origin main
```

## Configuração do projeto
>Robot framework é construído com Python, portanto, é necessário que tenhas a última versão desta tecnologia instalada em sua máquina e pode ser encontrado através na página oficial do Python.

## A instalação do framework e suas bibliotecas auxiliares é feita através do pip, gerenciador de bibliotecas nativo do Python. Proceda com o comando abaixo:
```
$ pip install robotframework
```
>E verifique se a instalação ocorreu corretamente:
```
$ robot --version
```
## A seguir, proceda com a instalação da biblioteca abaixo, através do pip:
```
SeleniumLibrary

```
## Execução do projeto
>Para executar os scripts, execute o comando abaixo via terminal estando dentro do diretório raiz do projeto, e após rodar o comando, serão gerados os relatórios e logs da execução do teste.
```
$ robot .\kabum_teste.robot
