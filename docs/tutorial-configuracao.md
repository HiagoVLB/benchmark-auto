# Tutorial de Configuração

## Configuração Jogo

### Template

O arquivo de configuração deve possuir o template abaixo de informações e estar no formato ".txt":

Nome Jogo: Subnautica <br>
Nome Exec Jogo: SubnauticaZero.exe <br>
Caminho Jogo: E:\Games\Steam\steamapps\common\SubnauticaZero <br>
Tempo Iniciar Jogo: 15 <br>
Comandos Acionar Tela Inicial: ; <br>
Tempo para Tela Inicial: 30 <br>
Comandos Fechar Jogo: 900,1275; <br>
Comandos Resolucao FullHd: ; <br>
Comandos Resolucao QuadHd: 1920,780;1920,780;1920,780;1920,780; <br>
Comandos Resolucao UltraHd: 1920,780;1920,780;1920,780;1920,780;1920,780; <br>
Comandos Tela Inicial para Resolucao: 900,1170; <br>
Comandos Aplicar Resolucao: ; <br>
Comandos Sair Tela da Resolucao: 730,1130; <br>
Comandos Retornar para Resolucao Inicial: ; <br>
Comandos Iniciar Benchmark: ; <br>
Duracao do Benchmark em Segundos: 30 <br>
Comandos Fechar Benchmark: ; <br>
Boleano Retornar para o Menu apos Benchmark: false <br>

### Informações Opcionais

As seguintes informações são opcionais:

Comandos Resolucao FullHd <br>
Comandos Resolucao QuadHd <br>
Comandos Resolucao UltraHd <br>
Comandos Tela Inicial para Resolucao <br>
Comandos Aplicar Resolucao <br>
Comandos Sair Tela da Resolucao <br>

Porém, se for informada uma resolução (FullHd, QuadHd ou UltraHd) devem ser informados os comandos:

Comandos Tela Inicial para Resolucao <br>
Comandos Aplicar Resolucao <br>
Comandos Sair Tela da Resolucao<br>

### Nome do Arquivo

Os arquivos de configuração de jogo podem possuir qualquer nome, mas a ideia seria colocar o nome do jogo.

### Local do Arquivo

Os arquivos de configuração de jogo devem ser colocados em "config » jogos".

### Nome e Prenchimento das Informações

As informações de benchmark podem ter qualquer nome, porém devem seguidos os seguintes padrões no preenchimento dos valores das informações:

- Padrão Geral: todas as informações devem possuir ": " dois pontos e espaço em branco após o nome da informação, pois esse é o separador utilizado para identificar o início dos valores das informações.
- Comandos: todas as informações que possuem "Comandos" no nome significam que deve ser preenchido o X e Y no formato "x,y;" (sem as aspas) se for um parâmetro opcional pode utilizar somente o ponto e vírgula (;). O motivo de se informar dessa maneira é que a aplicação clickará na posição x,y informada. Se forem necessários vários clicks utilizar ";" para separar as posições, por exemplo, "1920,780;1920,780;", não se deve utilizar espaçamento, pois todas as informações são obtidas através do local de cada carácter.
- Tempo: o tempo deve ser preenchido levanto em conta que será em segundos sempre, por exemplo, "30".
- Boleano: para valores "boleanos" informar sempre "true" (verdadeiro) ou "false" (falso). Essas informações são configuradas para que algo ocorra ou não, por exemplo, para que realize um processo para retornar para tela inicial após executar o benchmark, pois esse é um caso que varia de acordo com o jogo.

## Configuração Armazenamento

### Template

O arquivo de configuração deve possuir o template abaixo de informações e estar no formato ".txt":

Caminho Origem Print: C:\Users\hiago\Pictures\Screenshots
Caminho Resultado: E:\Projetos Git\Benchmarking\Resultados

### Local do arquivo

Os arquivos de configuração de armazenamento devem ser colocados em "config » windows".

### Nome do Arquivo

o nome do arquivo de armazenamento deve ser exatamente "armazenamento", lembrando que o formato deve ser ".txt".
