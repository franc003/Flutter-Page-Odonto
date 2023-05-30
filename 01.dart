//app odonto con 2 botones ocn nada , 1 boton que redirije a otr apagina y campo para escrubir nombre y contraseña
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

Widget odonto() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Container(
        child: ElevatedButton(child: Text("Tratamientos "), onPressed: null),
      ),
      Container(
        child: ElevatedButton(child: Text("Obras Sociales "), onPressed: null),
      ),
      Container(
        child: ElevatedButton(child: Text("Sacar Turno "), onPressed: null),
      )
    ],
  );
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
          boton1(),
          boton2(),
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

Widget solapa1() {
  return Text(
    "Tratamientos ",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget solapa2() {
  return Text(
    "Obras Solciales ",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget solapa3() {
  return Text(
    "Sacar Turno ",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "us",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "pw",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget boton1() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa1(),
  );
}

Widget boton2() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa2(),
  );
}

Widget boton3(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page02()));
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa3(),
  );
}
