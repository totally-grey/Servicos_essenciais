import 'package:flutter/material.dart';

_abrirOutraTela(ctx, page) {
  print("Foi clicado");
  Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
  {
    return page;
  }
  ));
}