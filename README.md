# Benchmark Automático

A aplicação de automação de benchmark ainda falta algumas etapas (inlcusive o início do próprio benchmark) para ser utilizável).

## Características

A ideia deste projeto é disponibilizar uma forma de automatização de testes em benchmarks, possibilitando o seguinte:

- Configuração dos testes de benchmark por jogo através de um arquivo TXT (seguindo o template definido);
- Fácil inclusão de novos jogos a serem testados, pois todos os jogos em "Config > Jogos" vão ser lidos automaticamente;
- Armazenamento de printscreen após e durante a execução dos benchmarks;
- Armazenamento dos principais componentes do computador (GPU, CPU e RAM).

## Lista de Atividades

Link para o trello com os itens a serem implementados:

- **[Board no Trello](https://trello.com/b/nuLJmdEz/benchmark-auto)**

## Arquivos de Configuração do Jogo

As informações de configuração do jogo devem seguir uma estrutura/template que foi definido na codificação.

### Configurações Jogo

Abaixo são apresentadas quais são as configurações que podem ser utilizadas e a disposição, sendo apresentado um exemplo de como fazer o preenchimento para cada caso:

<br> Nome Jogo: Subnautica
<br> Nome Exec Jogo: SubnauticaZero.exe
<br> Caminho Jogo: E:\Games\Steam\steamapps\common\SubnauticaZero
<br> Tempo Iniciar Jogo: 15
<br> Tempo para Tela Inicial: 30
<br> Comandos Fechar Jogo: 900,1275;
<br> Comandos Resolucao FullHd: ;
<br> Comandos Resolucao QuadHd: 1920,780;1920,780;1920,780;1920,780;
<br> Comandos Resolucao UltraHd: 1920,780;1920,780;1920,780;1920,780;1920,780;
<br> Comandos Tela Inicial para Resolucao: 900,1170;
<br> Comandos Aplicar Resolucao: ;
<br> Comandos Sair Tela da Resolucao: 730,1130;
<br> Comandos Retornar para Resolucao Inicial: ;
<br> Comandos Iniciar Benchmark: ;
<br> Comandos Fechar Benchmark: ;
<br> Duracao do Benchmark em Segundos: 60
<br> Intervalo de Print no Benchmark em Segundos: 60

Alguns parâmetros são opcionais, por exemplo, as resoluções.

### Configurações Armazenamento

Abaixo são apresentadas quais são as configurações que podem ser utilizadas e a disposição, sendo apresentado um exemplo de como fazer o preenchimento para cada caso:

<br> Caminho Origem Print: C:\Users\hiago\Pictures\Screenshots
<br> Caminho Resultado: E:\Projetos Git\Benchmarking\Resultados

### Pode Alterar

A seguinte informação pode ser alterada:

- O "nome" das configurações é irrelevante para execução do arquivo de configuração, sendo utilizado somente para facilitar leitura, então pode ser alterado a qualquer momento para outro nome, por exemplo, em vez de "Caminho Jogo" pode alterar sem nenhum impacto para "Caminho da Pasta do Jogo".

### Não Pode Alterar

As seguintes informações não podem ser alteradas:

- A ordem em que as configurações são apresentadas, por exemplo, "1º Nome Jogo, 2º Nome Exec Jogo, 3º Caminho Jogo etc";
- Remover os dois pontos seguido de espaço ": ", pois eles são utilizados para identificar o início dos parâmetros/valores das configurações;
- Remover a vírgula na separação das resoluções (x,y), pois ela é utilizada para identificar a posição da tela (X e Y);
- Remover o ponto e vírgula na separação dos clicks e no final em cada resolução (1920,780;900,1170;), pois eles são utilizados para identificar quando existe mais de um click.
