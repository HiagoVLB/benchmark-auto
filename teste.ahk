#SingleInstance Force

#Include "Jogo/controlar-jogo.ahk"
#Include "File/file.ahk"
#Include "Atalhos/atalhos.ahk"
#Include "Benchmark/benchmark.ahk"

^b::
    {
        Jogo := "NomeJogo"
        tempoAberturaPrograma := 15
        nomePrograma := "SubnauticaZero.exe"
        caminhoPrograma := "E:\Games\Steam\steamapps\common\SubnauticaZero"
        esperaTelaInicial := 30
        usuario := "hiago"

        jogo := ControlarJogo.New()
        ; jogo.AbrirJogo(nomePrograma, caminhoPrograma, tempoAberturaPrograma)
        ; jogo.AguardarTelaInicial(esperaTelaInicial)
        ; ;setResolucao()
        ; ;iniciarBenchmark()
        ; ArmazenarPrint(caminhoCapturaOrigem, caminhoCapturaDestino)
        ; jogo.FecharJogo([[900, 1275]])
    }

    ; teste := Benchmark.New()
    ; teste.testando()