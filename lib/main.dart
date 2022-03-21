
import 'package:flutter/material.dart';
import 'package:parcial2_electiva_3/paginas/principal_app.dart';


void main() {
  runApp( Parcial2Electiva3());
}

class Parcial2Electiva3 extends StatelessWidget {
  const Parcial2Electiva3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Principal()
    );
  }
}


