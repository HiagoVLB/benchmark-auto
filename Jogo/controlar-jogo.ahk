Class ControlarJogo
{
    AbrirJogo(nomePrograma, caminhoPrograma, tempoEspera)
    {
        ;Executa o Programa no caminho especificado
        Run nomePrograma, caminhoPrograma
        ;Espera o programa estar aberto
        NewPID := ProcessWait(nomePrograma, tempoEspera)
        ;Verifica se o programa foi aberto
        if not NewPID
        {
            MsgBox "Programa não foi aberto em " tempoEspera " segundos"
            return
        }

    }

    AguardarTelaInicial(qtdSegundos)
    {
        Sleep qtdSegundos * 1000
    }

    setResolucao(listaPosicoes)
    {
        this.clickMultiplo(listaPosicoes)
    }

    FecharJogo(listaPosicoes)
    {
        this.clickMultiplo(listaPosicoes)
    }

    clickMultiplo(listaPosicoes)
    {
        for x in listaPosicoes
        {
            Click(x[1],x[2])
        }
    }
}