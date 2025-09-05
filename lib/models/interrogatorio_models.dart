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
    if (resposta1.toLowerCase() == 'sim' || resposta1.toLowerCase() == 's') {
      quantSim += 1;
    }
    if (resposta2.toLowerCase() == 'sim' || resposta2.toLowerCase() == 's') {
      quantSim += 1;
    }
    if (resposta3.toLowerCase() == 'sim' || resposta3.toLowerCase() == 's') {
      quantSim += 1;
    }
    if (resposta4.toLowerCase() == 'sim' || resposta4.toLowerCase() == 's') {
      quantSim += 1;
    }
    if (resposta5.toLowerCase() == 'sim' || resposta5.toLowerCase() == 's') {
      quantSim += 1;
    }

    return quantSim;
  }

  String resultadoClassificacao(int quantSim) {
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
