import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page01.dart';
import 'package:flutter_application_1/pages/page02.dart';
import 'package:flutter_application_1/pages/page03.dart';

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

Widget boton1(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page01()));
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa1(),
  );
}

Widget boton2(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page02()));
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa2(),
  );
}

//este boton si queres traer el context paara eso tambien en la llamada de la funcion entreparente tambien tenes que mandar "context"
Widget boton3(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page03()));
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa3(),
  );
}

//estos bootnes X cuando no se redirigen a otra pag o no necesitan context
Widget botonX1() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa1(),
  );
}

Widget botonX2() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    child: solapa2(),
  );
}
