import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            TextButton(
              child: Text('Resposta 1'),
              onPressed: _resposta,
            ),
            TextButton(
              child: Text('Resposta 2'),
              onPressed: _resposta,
            ),
            TextButton(
              child: Text('Resposta 3'),
              onPressed: _resposta,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
