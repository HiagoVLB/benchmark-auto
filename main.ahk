#SingleInstance Force

#Include "Jogo/jogo-info.ahk"
#Include "benchmark/benchmark-jogo.ahk"
#Include "sistema/armazenamento-sistema.ahk"

#Include "sistema/arquivo.ahk"
#Include "sistema/especificacao.ahk"

Class Benchmark
{
    startBenchmark()
    {
        arq := Arquivo.New()
        arm := ArmazenamentoSistema.New()
        benchJogo := BenchmarkJogo.New(arm)
        jogosConfig := JogosConfiguracao.New()
        espec := Especificacao.New()

        espec.escreverEspecs(arq, arm, espec)
        for jogo in jogosConfig.getJogosConfigBenchmark()
        {
            benchJogo.executarBenchmark(jogo)
        }
    }
}

^b::
    {
        bench := Benchmark.New()
        bench.startBenchmark()
    }