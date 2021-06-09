import 'package:flutter/material.dart';
import 'package:servicos_essenciais/finalizado.dart';
import 'dart:io';

import 'package:servicos_essenciais/nossowidget/widget_button.dart';

class Tela_Final extends StatefulWidget {
  @override

  final _imagem;
  final tipo;
  final endereco;

  const Tela_Final(this._imagem, this.tipo, this.endereco);


  _Tela_FinalState createState() => _Tela_FinalState();
}

class _Tela_FinalState extends State<Tela_Final> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finalizando requisição"),
      ),
      body: _body(),
    );
  }

  _body() {
    String endereco = widget.endereco;
    String tipo = widget.tipo;
    File imagem = widget._imagem;
    return Container(
      //color: Colors.grey,
        child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[

                        Text("Endereço: " + endereco),
                        Text("Ocorrência: " + tipo),
                        Image.file(widget._imagem, width: 150, height: 150),

                        Botoes("Finalizar", onPressed: (){
                          _abrirOutraTela(context, Finalizado());
                        },)

                      ]
                  )
              )
            ]
        )
    );
  }

  _abrirOutraTela(ctx, page) {
    print("Foi clicado");
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }
    ));
  }

}
