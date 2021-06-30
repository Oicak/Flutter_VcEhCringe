import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  void resposta() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  final perguntas = [
    "Qual é o seu sexo?",
    "Em que ano você nasceu?",
    "Você usa calça Skin?",
    "Você fala de Boletor"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: resposta,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: resposta,
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: resposta,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
