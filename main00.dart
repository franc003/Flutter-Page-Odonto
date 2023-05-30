//base base

import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Center(child: Text("AC Odontologia"))),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child:
                  ElevatedButton(child: Text("Tratamientos "), onPressed: null),
            ),
            Container(
              child: ElevatedButton(
                  child: Text("Obras Sociales "), onPressed: null),
            ),
            Container(
              child:
                  ElevatedButton(child: Text("Sacar Turno "), onPressed: null),
            )
          ],
        )
    );
  }
}
