
MoverArquivos(caminhoOrigem, caminhoDestino)
{
    FileMove("" caminhoOrigem "\*.png", "" caminhoDestino "\*.png")
}

isDiretorioPresente(caminho)
{
    return DirExist(caminho)
}

CriarDiretorio(caminho)
{
    DirCreate caminho
    Sleep 5 * 1000
}

ArmazenarPrint(caminhoOrigem, caminhoDestino)
{
    WindowsPrint()
    if(!isDiretorioPresente(caminhoDestino))
        CriarDiretorio(caminhoDestino)
    MoverArquivos(caminhoOrigem, caminhoDestino)
}