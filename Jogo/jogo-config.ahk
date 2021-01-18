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
        confJogo.setAcionarTelaInicial(dadosArquivoJogo[5])
        confJogo.setTempoTelaInicial(dadosArquivoJogo[6])
        ;fechar o jogo
        confJogo.setPosicoesFecharJogo(dadosArquivoJogo[7])
        ;resolucoes
        confJogo.setResolucaoFullHd(dadosArquivoJogo[8])
        confJogo.setResolucaoQuadHd(dadosArquivoJogo[9])
        confJogo.setResolucaoUltraHd(dadosArquivoJogo[10])
        ;tela de escolha de resolucao
        confJogo.setIrTelaResolucao(dadosArquivoJogo[11])
        confJogo.setAplicarResolucao(dadosArquivoJogo[12])
        confJogo.setSairTelaResolucao(dadosArquivoJogo[13])
        confJogo.setRetornarResolucaoInicial(dadosArquivoJogo[14])
        ;procedimentos de benchmark
        confJogo.setIniciarBenchmark(dadosArquivoJogo[15])
        confJogo.setDuracaoBenchmark(dadosArquivoJogo[16])
        confJogo.setSairBenchark(dadosArquivoJogo[17])
        confJogo.setTelaInicialBenchmark(dadosArquivoJogo[18])

        return confJogo
    }
}