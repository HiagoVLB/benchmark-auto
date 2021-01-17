#Include "manipular-jogo.ahk"
#Include "../sistema/print.ahk"

Class BenchmarkJogo
{
    arquivosPrint := Print.New()
    manipJogo := ManipularJogo.New()

    caminhoOrigemPrint := ""
    caminhoResultado := ""
    segundo := 1000

    __New(armazenamento)
    {
        this.caminhoOrigemPrint := armazenamento.getCaminhoOrigemPrint()
        this.caminhoResultado := armazenamento.getCaminhoResultado()
    }

    executarBenchmark(jogo)
    {

        this.iniciarJogo(jogo)

        ;Verifica se foram informados parametros para resolucao
        if(this.isResolucaoInformada(jogo))
        {
            this.iniciarBenchmarkComResolucao(jogo)
        }
        else
        {
            this.inciarBenchmarkSemResolucao(jogo)
        }
        this.manipJogo.midSleep()

        ;fecha o jogo
        this.manipJogo.clickMultiplo(jogo.getPosicoesFecharJogo())
        this.manipJogo.midSleep()
    }

    iniciarJogo(jogo)
    {
        ;Inicia o jogo e aguarda ele estar carregado
        this.manipJogo.AbrirJogo(jogo.getNomeExecJogo(), jogo.getCaminhoJogo(), jogo.getTempoIniciarJogo())
        Sleep jogo.getTempoTelaInicial() * this.segundo
    }

    isResolucaoInformada(jogo)
    {
        return (jogo.getResolucaoFullHd().Length != 0 || jogo.getResolucaoQuadHd().Length != 0 || jogo.getResolucaoUltraHd().Length != 0)
    }

    inciarBenchmarkSemResolucao()
    {
        this.manipJogo.clickMultiplo()
        this.armazenarPrint("1",jogo, "Resolucao Padrao")
    }

    iniciarBenchmarkComResolucao(jogo)
    {
        ;FullHD
        if(jogo.getResolucaoFullHd().Length != 0)
        {
            this.benchmarkResolucao(jogo,jogo.getResolucaoQuadHd(), "1080p")
        }
        ;QuadHD
        if(jogo.getResolucaoQuadHd().Length != 0)
        {
            this.benchmarkResolucao(jogo,jogo.getResolucaoQuadHd(), "1440p")
        }
        ;UltraHD
        if(jogo.getResolucaoUltraHd().Length != 0)
        {
            this.benchmarkResolucao(jogo,jogo.getResolucaoUltraHd(), "2160p")
        }
    }

    benchmarkResolucao(jogo, clickResolucao, textoResolucao)
    {
        ;Seta a resolução
        this.manipJogo.setResolucao(jogo.getIrTelaResolucao(), clickResolucao,jogo.getSairTelaResolucao())
        ;Inicia o benchmark e tira os prints
        ;this.manipJogo.clickMultiplo(jogo.getIniciarBenchmark())
        this.armazenarPrint(this.nomeArquivo("1", jogo, textoResolucao))
    }

    nomeArquivo(prefix, jogo, sufixo)
    {
        return prefix " - " jogo.getNomeJogo() " - " sufixo
    }

    armazenarPrint(nomeArquivo)
    {
        this.arquivosPrint.TirarPrint(this.caminhoOrigemPrint, this.caminhoResultado, nomeArquivo)
    }
}