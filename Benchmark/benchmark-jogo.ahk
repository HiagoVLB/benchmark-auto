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

    iniciarEtapasBenchmark(jogo)
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

        this.retornarParaResolucaoInicial(jogo)
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

    inciarBenchmarkSemResolucao(jogo)
    {
        this.manipJogo.clickMultiplo(jogo.getIniciarBenchmark())
        this.armazenarPrint(jogo, "Resolucao Padrao")
        if(jogo.getTelaInicialBenchmark() == "true")
            OutputDebug "TODO: Implementar etapa de tela incial após benchmark quando for true"
        else
            this.manipJogo.clickMultiplo(jogo.getSairBenchark())
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
        this.manipJogo.setResolucao(jogo.getIrTelaResolucao(), clickResolucao, jogo.getAplicarResolucao(), jogo.getSairTelaResolucao())
        this.manipJogo.clickMultiplo(jogo.getAplicarResolucao())
        ;Inicia o benchmark e tira os prints
        this.manipJogo.clickMultiplo(jogo.getIniciarBenchmark())
        this.armazenarPrint(jogo, textoResolucao)
        ;TODO
        if(jogo.getTelaInicialBenchmark() == "true")
            OutputDebug "TODO: Implementar etapa de tela incial após benchmark quando for true"
        else
            this.manipJogo.clickMultiplo(jogo.getSairBenchark())
    }

    nomeArquivo(prefix, jogo, sufixo)
    {
        return prefix " - " jogo.getNomeJogo() " - " sufixo
    }

    armazenarPrint(jogo, sufixo)
    { 
        n := 0
        While n != 3
        {
            n += 1
            if(n == 1)
                Sleep Ceil(jogo.getDuracaoBenchmark()*0.20)
            if(n >= 2)
                Sleep Ceil(jogo.getDuracaoBenchmark()*0.30)
            this.arquivosPrint.printar(this.caminhoOrigemPrint, this.caminhoResultado, this.nomeArquivo(n, jogo, sufixo))
        }
    }

    retornarParaResolucaoInicial(jogo)
    {
        this.manipJogo.setResolucao(jogo.getIrTelaResolucao(), jogo.getRetornarResolucaoInicial(), jogo.getAplicarResolucao(), jogo.getSairTelaResolucao())
    }
}