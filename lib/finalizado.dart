import 'package:flutter/material.dart';
import 'package:servicos_essenciais/nossowidget/widget_imagens.dart';

class Finalizado extends StatefulWidget {
  @override
  _FinalizadoState createState() => _FinalizadoState();
}

class _FinalizadoState extends State<Finalizado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finalizado"),
      ),

      backgroundColor: Colors.white,

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[

                        Text("Ocorrência enviada com sucesso!"),
                        SuaImagem(caminhoArquivo: "imagens/envio_realizado.png",),

                      ]
                  )
              )
            ]
        )
    );
  }


}
