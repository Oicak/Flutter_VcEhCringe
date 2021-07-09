import "package:flutter/material.dart";

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        padding: EdgeInsets.all(40),
        onPressed: quandoSelecionado,
        child: Text(texto),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
