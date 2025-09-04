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
    );
  }
}
