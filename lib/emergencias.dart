import 'package:flutter/material.dart';
import 'package:servicos_essenciais/policia.dart';
import 'bombeiros.dart';
import 'ambulancia.dart';
import 'nossowidget/widget_button_c_imagem.dart';

class Emergencias extends StatefulWidget {
  @override
  _EmergenciasState createState() => _EmergenciasState();
}

class _EmergenciasState extends State<Emergencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergências"),
      ),

      body: _body(),
    );
  }

  _body() {
    return Container(
        color: Colors.grey,
        child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[

                        Botoes_Imagem("imagens/policia.png", onPressed: (){_abrirOutraTela(context, Policia());}),
                        Botoes_Imagem("imagens/bombeiros.png", onPressed: (){_abrirOutraTela(context, Bombeiros());}),
                        Botoes_Imagem("imagens/ambulancia.png", onPressed: (){_abrirOutraTela(context, Ambulancia());})

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
