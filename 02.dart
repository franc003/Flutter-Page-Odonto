//los 3 botones con redireccion de paginas

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page02.dart';

void main() => runApp(OdontoApp());

class OdontoApp extends StatelessWidget {
  const OdontoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AC Odontologia",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("AC Odonto"))),
      body: cuerpo(context),
    );
  }
}
