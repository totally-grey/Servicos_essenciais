import 'package:flutter/material.dart';

class Ambulancia extends StatefulWidget {
  @override
  _AmbulanciaState createState() => _AmbulanciaState();
}

class _AmbulanciaState extends State<Ambulancia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambulancia"),
      ),
    );
  }
}
