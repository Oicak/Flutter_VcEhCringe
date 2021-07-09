import 'package:flutter/material.dart';
import 'package:perguntas/ehCringe.dart';
import 'questao.dart';
import 'reposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  bool _indice = true;

  void _respostaVerdadeira() {
    setState(() {
      _perguntaSelecionada <= 3
          ? _perguntaSelecionada++
          : _perguntaSelecionada = 0;
    });
  }

  void _respostaFalse() {
    setState(() {
      _perguntaSelecionada <= 3
          ? _perguntaSelecionada++
          : _perguntaSelecionada = 0;
      _indice = false;
    });
  }

  void _resetMain() {
    setState(() {
      _perguntaSelecionada = 0;
      _indice = true;
    });
  }

  final perguntas = [
    {
      'texto': "Em que periodo você nasceu?",
      'resposta1': "Entre 1980 e 1995",
      'resposta2': "Antes de 1980",
      'resposta3': "Depois de 1995",
    },
    {
      'texto': "Você usa calça Skin?",
      'resposta1': 'Sim',
      'resposta2': 'Não',
      'resposta3': 'O que isso?',
    },
    {
      'texto': "Você mecionou a palavra 'Boleto' em alguma conversa?",
      'resposta1': 'Sim',
      'resposta2': 'Não',
      'resposta3': 'O que isso?',
    },
    {
      'texto': "Você acorda cedo?",
      'resposta1': 'Sim',
      'resposta2': 'Não',
      'resposta3': 'Mais ou menos',
    }
  ];

  Widget perguntaEResposta(_indice, _perguntaSelecionada, perguntas,
      _respostaFalse, _respostaVerdadeira, _resetMain) {
    if (_indice == true && _perguntaSelecionada < 4) {
      return Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          Resposta(perguntas[_perguntaSelecionada]['resposta1'].toString(),
              _respostaFalse),
          Resposta(perguntas[_perguntaSelecionada]['resposta2'].toString(),
              _respostaVerdadeira),
          Resposta(perguntas[_perguntaSelecionada]['resposta3'].toString(),
              _respostaVerdadeira),
        ],
      );
    } else if (_indice == false) {
      return EhCringe("Você é Cringe!", _resetMain);
    } else {
      return EhCringe("Você não é Cringe!", _resetMain);
    }
  }

  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title:
              Align(alignment: Alignment.center, child: Text('VOCÊ É CRINGE?')),
        ),
        body: perguntaEResposta(_indice, _perguntaSelecionada, perguntas,
            _respostaFalse, _respostaVerdadeira, _resetMain));
    return MaterialApp(
      home: scaffold,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
