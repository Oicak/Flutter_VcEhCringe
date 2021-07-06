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
      _perguntaSelecionada <= 2
          ? _perguntaSelecionada++
          : _perguntaSelecionada = 1;
    });
  }

  void _respostaFalse() {
    setState(() {
      _perguntaSelecionada <= 2
          ? _perguntaSelecionada++
          : _perguntaSelecionada = 1;
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
      'resposta1': "1945 – 1964",
      'resposta2': "1965 – 1979",
      'resposta3': "1980 – 1994",
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
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Align(
                alignment: Alignment.center, child: Text('VOCÊ É CRINGE?')),
          ),
          body: _perguntaSelecionada > 2
              ? EhCringe("Você não é Cringe!", _resetMain)
              : _indice == true
                  ? Column(
                      children: [
                        Questao(perguntas[_perguntaSelecionada]['texto']
                            .toString()),
                        Resposta(
                            perguntas[_perguntaSelecionada]['resposta1']
                                .toString(),
                            _respostaFalse),
                        Resposta(
                            perguntas[_perguntaSelecionada]['resposta2']
                                .toString(),
                            _respostaVerdadeira),
                        Resposta(
                            perguntas[_perguntaSelecionada]['resposta3']
                                .toString(),
                            _respostaVerdadeira),
                      ],
                    )
                  : EhCringe("Você é Cringe!", _resetMain)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
