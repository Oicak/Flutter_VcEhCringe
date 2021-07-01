import "package:flutter/material.dart";

class Resposta extends StatelessWidget {
  final String texto;

  Resposta({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: null,
        child: Text(texto),
      ),
    );
  }
}
