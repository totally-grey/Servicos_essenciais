import 'package:flutter/material.dart';
import 'package:servicos_essenciais/nossowidget/widget_text.dart';

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
    return Container(
      //color: Colors.grey,
        child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[

                        Textos(widget.endereco),
                        Textos(widget.tipo),
                        Image.file(widget._imagem),

                      ]
                  )
              )
            ]
        )
    );
  }

}
