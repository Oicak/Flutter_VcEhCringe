import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EhCringe extends StatelessWidget {
  final String texto;
  void Function() resetMain;

  EhCringe(this.texto, this.resetMain);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(texto,
                style: TextStyle(
                  fontSize: 28,
                ))),
        Center(
            child: Padding(
                padding: EdgeInsets.all(8),
                child: TextButton(
                  onPressed: resetMain,
                  child: Text("Voltar ao inicio."),
                )))
      ],
    );
  }
}
