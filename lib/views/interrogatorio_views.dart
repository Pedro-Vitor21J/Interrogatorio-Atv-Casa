import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:atv_casa_1/views_models/interrogatorio_views_models.dart';

class InterrogatorioViews extends StatelessWidget {
  const InterrogatorioViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Interrogatório', style: TextStyle(color: Colors.white)),
      ),

      // Início do body Padding
      body: Padding(
        padding: EdgeInsets.all(20),

        // Início da Column
        child: Consumer<InterrogatorioViewsModels>(
          builder: (context, viewModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Pergunta 1
                TextField(
                  onChanged: viewModel.setResposta1,
                  decoration: InputDecoration(
                    label: Text('Telefonou para a vítima?'),
                  ),
                ),

                // Pergunta 2
                TextField(
                  onChanged: viewModel.setResposta2,
                  decoration: InputDecoration(
                    label: Text('Esteve no local do crime?'),
                  ),
                ),

                // Pergunta 3
                TextField(
                  onChanged: viewModel.setResposta3,
                  decoration: InputDecoration(
                    label: Text('Mora perto da vítima?'),
                  ),
                ),

                // Pergunta 4
                TextField(
                  onChanged: viewModel.setResposta4,
                  decoration: InputDecoration(
                    label: Text('Tinha dívidas com a vítima?'),
                  ),
                ),

                // Pergunta 5
                TextField(
                  onChanged: viewModel.setResposta5,
                  decoration: InputDecoration(
                    label: Text('Já trabalhou com a vítima?'),
                  ),
                ),

                // Botão Resultado
                ElevatedButton(onPressed: () {}, child: Text('Resultado')),

                // Texto q mostra o resultado
                Text('Resultado: '),
              ],
            );
          },
        ),
      ),
    );
  }
}
