import 'package:flutter/material.dart';
import 'package:atv_casa_1/models/interrogatorio_models.dart';

class InterrogatorioViewsModels extends ChangeNotifier {
  String _resposta1 = '';
  String _resposta2 = '';
  String _resposta3 = '';
  String _resposta4 = '';
  String _resposta5 = '';
  int _quantSim = 0;
  String _classificacao = '';

  int get quantSim => _quantSim;
  String get classificacao => _classificacao;

  void setResposta1(String resposta) {
    _resposta1 = resposta;
    notifyListeners();
  }

  void setResposta2(String resposta) {
    _resposta2 = resposta;
    notifyListeners();
  }

  void setResposta3(String resposta) {
    _resposta3 = resposta;
    notifyListeners();
  }

  void setResposta4(String resposta) {
    _resposta4 = resposta;
    notifyListeners();
  }

  void setResposta5(String resposta) {
    _resposta5 = resposta;
    notifyListeners();
  }

  void resultadoInterrogatorio() {
    String resposta1 = _resposta1;
    String resposta2 = _resposta2;
    String resposta3 = _resposta3;
    String resposta4 = _resposta4;
    String resposta5 = _resposta5;

    final interrogatorioModels = InterrogatorioModels(
      resposta1: resposta1,
      resposta2: resposta2,
      resposta3: resposta3,
      resposta4: resposta4,
      resposta5: resposta5,
    );
    _quantSim = interrogatorioModels.contaSim();
    _classificacao = interrogatorioModels.resultadoClassificacao(_quantSim);
    notifyListeners();
  }
}
