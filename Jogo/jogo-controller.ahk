Class ControllerJogo
{
    nomeJogo := ""
    nomeExecJogo := ""
    caminhojogo := ""
    tempoParaIniciarJogo := 0
    tempoTelaInicialJogo := 0
    posicoesFecharJogo := []
    posicaoResolucaoFullHd := []
    posicaoResolucaoQuadHd := []
    posicaoResolucaoUltraHd := []
    irTelaResolucao := []
    posicoesAplicarResolucao := []
    sairTelaResolucao := []
    posicoesRetornarResolucaoInicial := []
    posicoesIniciarBenchmark := []
    posiecoesSairBenchmark := []
    duracaoSegundosBenchmark := 0
    intervaloPrintBechmark := 0

    ; Get
    getNomeJogo()
    {
        return this.nomeJogo
    }

    getNomeExecJogo()
    {
        return this.nomeExecJogo
    }

    getCaminhoJogo()
    {
        return this.caminhojogo
    }

    getTempoIniciarJogo()
    {
        return this.tempoParaIniciarJogo
    }

    getTempoTelaInicial()
    {
        return this.tempoTelaInicialJogo
    }

    getPosicoesFecharJogo()
    {
        return this.posicoesFecharJogo
    }

    getResolucaoFullHd()
    {
        return this.posicaoResolucaoFullHd
    }

    getResolucaoQuadHd()
    {
        return this.posicaoResolucaoQuadHd
    }

    getResolucaoUltraHd()
    {
        return this.posicaoResolucaoUltraHd
    }

    getIrTelaResolucao(){
        return this.irTelaResolucao
    }

    getAplicarResolucao()
    {
        return this.posicoesAplicarResolucao
    }

    getSairTelaResolucao(){
        return this.sairTelaResolucao
    }

    getRetornarResolucaoInicial()
    {
        return this.posicoesRetornarResolucaoInicial
    }

    getIniciarBenchmark(){
        return this.posicoesIniciarBenchmark
    }

    getSairBenchark(){
        return this.posicoesSairBenchmark
    }

    getDuracaoBenchmark()
    {
        return this.duracaoSegundosBenchmark
    }

    ;Set
    setNomeJogo(nomeJogo)
    {
        this.nomeJogo := nomeJogo 
    }

    setNomeExecJogo(nomeExecJogo)
    {
        this.nomeExecJogo := nomeExecJogo 
    }

    setCaminhoJogo(caminhojogo)
    {
        this.caminhojogo := caminhojogo 
    }

    setTempoIniciarJogo(tempoParaIniciarJogo)
    {
        this.tempoParaIniciarJogo := tempoParaIniciarJogo 
    }

    setTempoTelaInicial(tempoTelaInicialJogo)
    {
        this.tempoTelaInicialJogo := tempoTelaInicialJogo 
    }

    setPosicoesFecharJogo(posicoesFecharJogo)
    {
        this.posicoesFecharJogo := posicoesFecharJogo 
    }

    setResolucaoFullHd(posicaoResolucaoFullHd)
    {
        this.posicaoResolucaoFullHd := posicaoResolucaoFullHd 
    }

    setResolucaoQuadHd(posicaoResolucaoQuadHd)
    {
        this.posicaoResolucaoQuadHd := posicaoResolucaoQuadHd 
    }

    setResolucaoUltraHd(posicaoResolucaoUltraHd)
    {
        this.posicaoResolucaoUltraHd := posicaoResolucaoUltraHd 
    }

    setIrTelaResolucao(irTelaResolucao){
        return this.irTelaResolucao := irTelaResolucao
    }

    setAplicarResolucao(posicoesAplicarResolucao)
    {
        return this.posicoesAplicarResolucao := posicoesAplicarResolucao
    }

    setSairTelaResolucao(sairTelaResolucao){
        return this.sairTelaResolucao := sairTelaResolucao
    }

    setRetornarResolucaoInicial(posicoesRetornarResolucaoInicial)
    {
        return this.posicoesRetornarResolucaoInicial := posicoesRetornarResolucaoInicial
    }

    setIniciarBenchmark(posicoesIniciarBenchmark){
        return this.posicoesIniciarBenchmark := posicoesIniciarBenchmark
    }

    setSairBenchark(posicoesSairBenchmark){
        return this.posicoesSairBenchmark := posicoesSairBenchmark
    }

    setDuracaoBenchmark(duracaoSegundosBenchmark)
    {
        return this.duracaoSegundosBenchmark := duracaoSegundosBenchmark
    }
}