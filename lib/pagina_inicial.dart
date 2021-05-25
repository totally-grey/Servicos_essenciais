import 'package:flutter/material.dart';
import 'package:servicos_essenciais/nossowidget/widget_input.dart';
import 'nossowidget/widget_imagens.dart';


class Pagina_Inicial extends StatefulWidget {
  @override
  _Pagina_InicialState createState() => _Pagina_InicialState();
}

class _Pagina_InicialState extends State<Pagina_Inicial> {

  final login = TextEditingController();
  final senha = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços Essenciais"),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                SuaImagem(caminhoArquivo:"imagens/tela_inicial.png"),

                InputTextos("Login", "Login_", mycontroller: login),
                InputTextos("Senha", "Senha_", mycontroller: senha),

              ]
            )
          )
        ]
      )
    );
  }
}
