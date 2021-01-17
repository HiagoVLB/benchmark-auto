Class Arquivo
{
    arquivoLido := []
    arquivosPasta := []
    caminhoArquivo := ""

    getLinhasArquivo(caminhoArquivo)
    {
        linhasArquivo := []

        Loop Read, caminhoArquivo
        {
            linhasArquivo.push(A_LoopReadLine)
        }

        return linhasArquivo
    }

    escreverArquivo(caminhoDestino, nomeArquivo, parametros)
    {
        dadosTratados := ""
        if(!DirExist(caminhoDestino))
        {
            DirCreate caminhoDestino
            Sleep 5 * 1000
        }
        arquivoEscrita := FileOpen(caminhoDestino "\" nomeArquivo, "w")
        arquivoEscrita.Write(parametros)
    }

    setCaminhoArquivo(caminhoArquivo)
    {
        this.caminhoArquivo := caminhoArquivo
    }

    getCaminhoArquivo()
    {
        return this.caminhoArquivo
    }

    setArquivosTxtPasta(caminhoPasta)
    {
        caminhoTodosArquivos := caminhoPasta . "*.txt"
        Loop Files, caminhoTodosArquivos 
        {
            caminhoArquivo := caminhoPasta A_LoopFileName
            this.arquivosPasta.push(caminhoArquivo)
        }

    }

    getArquivosTxtPasta()
    {
        return this.arquivosPasta
    }
}