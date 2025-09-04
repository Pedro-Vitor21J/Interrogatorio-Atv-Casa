class InterrogatorioModels {
  String resposta1 = '';
  String resposta2 = '';
  String resposta3 = '';
  String resposta4 = '';
  String resposta5 = '';
  int quantSim = 0;
  String classificacao = '';

  InterrogatorioModels({
    required this.resposta1,
    required this.resposta2,
    required this.resposta3,
    required this.resposta4,
    required this.resposta5,
  });

  int contaSim() {
    quantSim = 0;
    if (resposta1 == 'sim' || resposta1 == 's') {
      quantSim += 1;
    }
    if (resposta2 == 'sim' || resposta2 == 's') {
      quantSim += 1;
    }
    if (resposta3 == 'sim' || resposta3 == 's') {
      quantSim += 1;
    }
    if (resposta4 == 'sim' || resposta4 == 's') {
      quantSim += 1;
    }
    if (resposta5 == 'sim' || resposta5 == 's') {
      quantSim += 1;
    }

    return quantSim = 0;
  }

  String resultadoClassificacao(int quantSim) {
    classificacao = '';

    if (quantSim <= 1) {
      classificacao = 'INOCENTE';
    }
    if (quantSim == 2) {
      classificacao = 'SUSPEITO';
    }
    if (quantSim >= 3 && quantSim <= 4) {
      classificacao = 'CÚMPLICE';
    }
    if (quantSim == 5) {
      classificacao = 'ASSASINO!';
    }

    return classificacao;
  }
}
