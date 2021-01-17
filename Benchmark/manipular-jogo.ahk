Class ManipularJogo
{
    segundo := 1000

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

    setResolucao(irTelaResolucao, resolucao, sairTelaResolucao)
    {
        this.clickMultiplo(irTelaResolucao)
        this.midSleep()
        this.clickMultiplo(resolucao)
        this.midSleep()
        this.clickMultiplo(sairTelaResolucao)
        this.midSleep()
    }

    clickMultiplo(listaPosicoes)
    {
        if(listaPosicoes != [])
        {
            for x in listaPosicoes
            {
                Click(x[1],x[2])
                this.fastSleep()
            }
        }
    }

    fastSleep()
    {
        Sleep 1 * this.segundo
    }

    midSleep()
    {
        Sleep 5 * this.segundo
    }
}