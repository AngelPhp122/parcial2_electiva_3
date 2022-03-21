import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:parcial2_electiva_3/archivosJSON/archivosJSON.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2_electiva_3/paginas/paginaSeleccion.dart';

class paginaSeleccion extends StatefulWidget {
  final dynamic valores;
  paginaSeleccion({Key? key, this.valores}) : super(key: key);



  @override
  State<paginaSeleccion> createState() => _paginaSeleccionState();
}

class _paginaSeleccionState extends State<paginaSeleccion> {
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, appBar: AppBar(backgroundColor: Colors.transparent, leading: IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),  actions: <Widget>[IconButton(onPressed: null, icon: Icon(Icons.shopping_bag))]),
    body: bodyPaginaSelecion(), 
    );
  }

Widget bodyPaginaSelecion(){

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
      Column(children: [
        Container(
          child: 
          Center(child: 
          Container(width: 200, height: 200, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Sillas[1]['img']))),)))],),
          Column(children:
           [Container(child: 
           Center(child: 
           Container(child: Row(children: [Container(child: Text("Silla guanaca"),alignment: Alignment.topLeft,
           ),],),width: 400, height: 350, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),),),],)
    ],
  );
  
}



}