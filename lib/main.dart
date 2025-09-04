/*Crie um aplicativo que faça 5 perguntas para uma pessoa sobre um crime.  
As perguntas são: 
• “Telefonou para a vítima?” 
• “Esteve no local do crime?” 
• “Mora perto da vítima?” 
• “Tinha dívidas com a vítima?” 
• “Já trabalhou com a vítima?” 
O usuário deve responder apenas SIM ou NÃO. O programa deve no final emitir uma classificação sobre 
a participação da pessoa no crime.  
• Se a pessoa responder positivamente a 2 questões ela deve ser classificada como “Suspeita”;  
• Entre 3 e 4 como “Cúmplice”;  
• 5 questões positivas será considerado como “Assassino”.  
• Caso contrário, ele será classificado como “Inocente”. 
OBS: 
• DEVERÁ ser utilizado o Provider como gerenciador de estados e a organização de pastas deve 
atender ao Padrão de Arquitetura MVVM.*/

import 'package:flutter/material.dart';
import 'package:atv_casa_1/views/interrogatorio_views.dart';
import 'package:atv_casa_1/views_models/interrogatorio_views_models.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => InterrogatorioViewsModels(),
      child: MaterialApp(
        home: InterrogatorioViews(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}