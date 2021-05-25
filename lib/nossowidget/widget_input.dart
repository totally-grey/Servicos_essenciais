import 'package:flutter/material.dart';

class InputTextos extends StatelessWidget {

  String rotulo;
  String label;
  TextEditingController mycontroller = TextEditingController();

  InputTextos(this.rotulo, this.label, {this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,

      style: TextStyle(
        fontSize:17,
      ),


      decoration: InputDecoration(
        labelText: rotulo,
        hintText: label,
      ),


    );
  }
}
