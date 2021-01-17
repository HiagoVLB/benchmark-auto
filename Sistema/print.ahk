Class Print
{
    printar(caminhoOrigem, caminhoDestino, nomeArquivo)
    {
        this.Print()
        if(!DirExist(caminhoDestino))
        {
            DirCreate caminhoDestino
            Sleep 5 * 1000
        }
        FileMove(caminhoOrigem "\*.png", caminhoDestino "\" nomeArquivo ".png")
    }

    Print()
    {
        Send "#{PrintScreen}"
        Sleep 5 * 1000
    }
}