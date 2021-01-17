Class Especificacao
{
    getCPU()
    {
        processador := ""
        For CPU in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_Processor") {
            processador := CPU.Name
        }

        return processador
    }

    getGPU()
    {
        placaVideo := ""
        For GPU in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_VideoController") {
            placaVideo := GPU.Name
        }

        return placaVideo
    }

    getRAM()
    {
        memoriaRAM := ""
        For RAM in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_PhysicalMemory") {
            memoriaRAM .= "Capacidade: " Ceil(RAM.Capacity/(1024*1024*1024)) "GB" " - Frequencia: " RAM.Speed " - Fabricante: " RAM.Manufacturer "`n"
        }
        ;Remove a última quebra de linha
        memoriaRAM := SubStr(memoriaRAM, 1, StrLen(memoriaRAM) -1)
        return memoriaRAM
    }

    getEspecificaoTexto()
    {
        return "" this.getCPU() "`n" this.getGPU() "`n" this.getRAM() "`n"
    }

    escreverEspecs(arq, arm, espec)
    {
        arq.escreverArquivo(arm.getCaminhoResultado(),"especificacao.txt",espec.getEspecificaoTexto())
    }
}