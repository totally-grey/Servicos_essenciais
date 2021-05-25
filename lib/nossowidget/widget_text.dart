import 'package:flutter/material.dart';

class Textos extends StatelessWidget {

  String seuTexto;

  Textos(this.seuTexto);

  @override

  Widget build(BuildContext context) {
    return Text(
        seuTexto,
        style: TextStyle(
        color: Colors.black,
        fontSize: 20
      )
    );
  }


}


