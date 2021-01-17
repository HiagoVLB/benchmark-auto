Class ArquivoJogosConfig
{
    arquivoLido := []
    arquivosPasta := []
    caminhoArquivo := ""

    tratarArquivoConfiguracao(arquivo)
    {
        arquivoTratado := []

        For linha in arquivo
        {
            arquivoTratado.push(this.tratarInfoArquivoJogo(this.tratrarConteudoLinha(linha)))
        }

        return arquivoTratado
    }

    tratrarConteudoLinha(linha)
    {
        return SubStr(linha, InStr(linha, ":") + 2)
    }

    tratarInfoArquivoJogo(conteudoLinha)
    {
        if(InStr(conteudoLinha, ";") != 0 && InStr(conteudoLinha, ";") != 1)
        {
            conteudoArray := []
            loop
            {
                if(conteudoLinha == "")
                {
                    break
                }
                posVirgula := InStr(conteudoLinha, ",")
                posPontoVirgula := InStr(conteudoLinha, ";")

                x := SubStr(conteudoLinha, 1, posVirgula -1)
                y := SubStr(conteudoLinha, posVirgula +1, posPontoVirgula - posVirgula -1)
                conteudoArray.push([x,y])

                conteudoLinha := SubStr(conteudoLinha, posPontoVirgula +1)
            }
            conteudoLinha := conteudoArray
        }
        else if(InStr(conteudoLinha, ";") == 1)
        {
            conteudoLinha := []
        }
        return conteudoLinha
    }

    setArquivosPasta(caminhoPasta)
    {
        caminhoTodosArquivos := caminhoPasta . "*.txt"
        Loop Files, caminhoTodosArquivos 
        {
            caminhoArquivo := caminhoPasta A_LoopFileName
            this.arquivosPasta.push(caminhoArquivo)
        }

    }

    getArquivosPasta()
    {
        return this.arquivosPasta
    }
}