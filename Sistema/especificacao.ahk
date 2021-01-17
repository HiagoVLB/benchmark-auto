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
            placaVideo := GPU.Name " - " ;GPU.VideoMemoryType.VRAM
        }

        return placaVideo
    }

    getRAM()
    {
        memoriaRAM := []
        For RAM in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_PhysicalMemory") {
            memoriaRAM.push("Capacidade: " Ceil(RAM.Capacity/(1024*1024*1024)) "GB" " - Frequencia: " RAM.Speed " - Fabricante: " RAM.Manufacturer)
        }

        return memoriaRAM
    }
}