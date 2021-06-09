import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:servicos_essenciais/nossowidget/widget_button.dart';
import 'package:servicos_essenciais/nossowidget/widget_input.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:servicos_essenciais/tela_final.dart';


class Bombeiros extends StatefulWidget {
  @override
  _BombeirosState createState() => _BombeirosState();
}

class _BombeirosState extends State<Bombeiros> {


  final endereco = TextEditingController();
  final tipo = TextEditingController();
  final picker = ImagePicker();
  File _imagem;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bombeiros"),
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

                        InputTextos("Informe o endereço da emergência","", mycontroller: endereco,),

                        InputTextos("Informe o tipo da ocorrência", "", mycontroller: tipo,),

                        _imagem == null ? Text('No image selected.') : Image.file(_imagem, width: 250, height: 250,),

                        Botoes("Enviar imagem", onPressed: (){getImage();},),

                        Botoes("Finalizar requisição", onPressed: (){_abrirOutraTela(context, Tela_Final(endereco, tipo, _imagem));})


                      ]
                  )
              )
            ]
        )
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _imagem = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _abrirOutraTela(ctx, page) {
    print("Foi clicado");
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }
    ));
  }

}
