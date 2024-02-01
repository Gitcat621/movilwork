import 'package:flutter/material.dart';

class Hola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Container(
      // Estructura de widgets anidados
      child: Column(
        children: [
           Text("Holaaaaaaaa", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20.0)),
        ],
      ),
    );
  }
  
}