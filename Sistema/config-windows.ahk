#Include "arquivo.ahk"

Class ArmazenamentoConfig
{
    caminhoArquivoConfig := "Config\Windows\armazenamento.txt"

    __New()
    {
        arq := Arquivo.New()
        arquivoTratado := this.tratrarConteudoArquivo(arq.getLinhasArquivo(this.caminhoArquivoConfig))
        this.setCaminhoOrigemPrint(arquivoTratado[1])
        this.setCaminhoResultado(arquivoTratado[2])
    }

    setCaminhoOrigemPrint(caminhoOrigemPrint)
    {
        this.caminhoOrigemPrint := caminhoOrigemPrint
    }

    setCaminhoResultado(caminhoDestinoPrint)
    {
        this.caminhoDestinoPrint := caminhoDestinoPrint
    }

    tratrarConteudoArquivo(arquivo)
    {
        arquivoTratado := []
        For linha in arquivo
        {
            arquivoTratado.push(SubStr(linha, InStr(linha, ":") + 2))
        }
        return arquivoTratado
    }

    getCaminhoOrigemPrint()
    {
        return this.caminhoOrigemPrint
    }

    getCaminhoResultado()
    {
        return this.caminhoDestinoPrint
    }
}