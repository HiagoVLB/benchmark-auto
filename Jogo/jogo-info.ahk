#Include "jogo-arquivo.ahk"
#Include "jogo-controller.ahk"
#Include "../sistema/arquivo.ahk"

Class JogosConfiguracao
{

    listaArquivosJogos := []

    caminhoArquivosJogos := "Config/Jogos/"

    getJogosConfigBenchmark()
    {
        listaJogos := []

        For n in this.getArquivoJogoTratados(this.getInfoArquivos())
        {
            listaJogos.push(this.getConfiguracaoJogo(n))
        }

        return listaJogos
    }

    getArquivoJogoTratados(listaArquivos)
    {
        arqJogoConfig := ArquivoJogosConfig.New()
        listaArqJogoTratrado := []

        for jogoArq in listaArquivos
        {
            listaArqJogoTratrado.push(arqJogoConfig.tratarArquivoConfiguracao(jogoArq))
        }

        return listaArqJogoTratrado
    }

    getInfoArquivos()
    {
        listaConfigArquivos := []
        arq := Arquivo.New()
        arq.setArquivosTxtPasta(this.caminhoArquivosJogos)

        For a in arq.getArquivosTxtPasta()
        {
            listaConfigArquivos.push(arq.getLinhasArquivo(a))
        }

        return listaConfigArquivos
    }

    getConfiguracaoJogo(dadosArquivoJogo)
    {
        confJogo := ControllerJogo.New()
        ;Info do jogo e local
        confJogo.setNomeJogo(dadosArquivoJogo[1])
        confJogo.setNomeExecJogo(dadosArquivoJogo[2])
        confJogo.setCaminhoJogo(dadosArquivoJogo[3])
        ;Inicialiazacao
        confJogo.setTempoIniciarJogo(dadosArquivoJogo[4])
        confJogo.setTempoTelaInicial(dadosArquivoJogo[5])
        ;fechar o jogo
        confJogo.setPosicoesFecharJogo(dadosArquivoJogo[6])
        ;resolucoes
        confJogo.setResolucaoFullHd(dadosArquivoJogo[7])
        confJogo.setResolucaoQuadHd(dadosArquivoJogo[8])
        confJogo.setResolucaoUltraHd(dadosArquivoJogo[9])
        ;tela de escolha de resolucao
        confJogo.setIrTelaResolucao(dadosArquivoJogo[10])
        confJogo.setAplicarResolucao(dadosArquivoJogo[11])
        confJogo.setSairTelaResolucao(dadosArquivoJogo[12])
        confJogo.setRetornarResolucaoInicial(dadosArquivoJogo[13])
        ;procedimentos de benchmark
        confJogo.setIniciarBenchmark(dadosArquivoJogo[14])
        confJogo.setSairBenchark(dadosArquivoJogo[15])
        confJogo.setDuracaoBenchmark(dadosArquivoJogo[16])
        confJogo.setIntervaloPrintBechmark(dadosArquivoJogo[17])

        return confJogo
    }
}