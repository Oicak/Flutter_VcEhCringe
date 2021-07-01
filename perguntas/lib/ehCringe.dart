import 'package:flutter/material.dart';

class EhCringe extends StatelessWidget {
  final String texto;

  EhCringe(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(texto,
            style: TextStyle(
              fontSize: 28,
            )));
  }
}
