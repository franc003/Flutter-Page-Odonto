import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page01.dart';
import 'package:flutter_application_1/pages/page02.dart';
import 'package:flutter_application_1/pages/page03.dart';
import 'package:flutter_application_1/widgets/bot-tex-campos.dart';

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

Widget cuerpo(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          boton1(context),
          boton2(context),
          boton3(context),
          SizedBox(
            height: 15,
          ),
          campoUsuario(),
          campoContrasena(),
        ],
      ),
    ),
  );
}
