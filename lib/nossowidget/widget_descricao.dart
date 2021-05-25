import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  String animal;

  Descricao(this.animal);



  @override
  Widget build(BuildContext context) {

    String resposta = "Resposta de teste";

    switch (this.animal) {

      case "Pandas":
        resposta = "Os ursos pandas são animais que apresentam um padrão de pelagem bastante "
              "característico, sendo esses reconhecidos facilmente a partir de seus pelos brancos e "
              "manchas negras ao redor dos olhos, orelhas, membros e ombros. Esses animais pesam entre "
              "75 e 160 quilos e podem atingir mais de 1,20 m de altura.";
        break;


      case "Husky":
        resposta = "O husky siberiano é uma raça de cães de trabalho e companhia, "
          "do tipo Spitz, oriunda da Sibéria na Rússia. Sua função específica é tracionar trenós.";
        break;

      case "Pantera":
        resposta = "Sua cabeça não é muito grande, tem orelhas pontudas e olhos grandes e claros, que contrastam "
              "com sua pelagem negra. Tem um maxilar que se sobressai e uma mordida ainda mais potente, "
              "capaz de estraçalhar animais de grande porte facilmente.";
        break;

      case("Hamster"):
        resposta = "Hamster [rémster] ou criceto é uma designação comum a diversos pequenos mamíferos roedores, da "
              "subfamília Cricetinae, encontrados na África e Ásia, dotados de grande bolsa facial e de cauda muito curta";
        break;

      case("Pinguim"):
        resposta = "O pinguim é uma ave da família Spheniscidae, altamente modificadas para a uma vida aquática, "
              "sendo suas asas adaptadas para promover impulso através da água";
        break;

      default:
        resposta = "Erro no nome do animal";
        break;

    }

    return Text(
        resposta,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        )
    );
  }
}
