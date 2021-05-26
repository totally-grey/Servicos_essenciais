import 'package:flutter/material.dart';
import 'widget_imagens.dart';

class Botoes_Imagem extends StatelessWidget {

  final String caminhoImagem;
  final Function onPressed;

  Botoes_Imagem(this.caminhoImagem, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        //color: Colors.red,
        child: SuaImagem(
          caminhoArquivo: caminhoImagem,
        ),
        onPressed: onPressed);
  }
}
