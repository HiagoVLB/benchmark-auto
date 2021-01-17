#SingleInstance Force

#Include "Jogo/jogo-info.ahk"
#Include "benchmark/benchmark-jogo.ahk"
#Include "sistema/arquivo.ahk"
#Include "sistema/config-windows.ahk"

Class Benchmark
{
    startBenchmark()
    {
        JogosConfig := JogosConfiguracao.New()
        armezanamento := ArmazenamentoConfig.New()
        BenchmarkJog := BenchmarkJogo.New(armezanamento) 

        for jogo in JogosConfig.getJogosConfigBenchmark()
        {
            BenchmarkJog.executarBenchmark(jogo)
        }
    }
}

^b::
    {
        bench := Benchmark.New()
        bench.startBenchmark()
    }