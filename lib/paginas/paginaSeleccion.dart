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
      Column(
        children: [Container(
          width: 200, 
          height: 200, 
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Sillas[1]['img'])),
          ),
      ),Column(
        children: 
        [Container(    width: 400, 
          height: 360, 
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)
          ),
      child: Row(
        children: [Container(
          color: Colors.amber, 
          height: 320, 
          width: 180, 
          child: Column(
            children: [Container(
              color: Colors.black12, 
              width: 170,
              height: 20, 
              child: Text(Sillas[1]['title']),),Column(children: [Container(child: IconButton(onPressed: null, icon: Icon(Icons.star),alignment: Alignment.topLeft,),color: Colors.redAccent, height: 10, width: 190,)],)],),),
              Row(
            children: [Container(
              color: Colors.blueAccent, 
              height: 320, 
              width: 180, 
              child: Column(
                children: [Container(color: Colors.black12,
                width: 170,
                height: 20, child: Text(Sillas[2]['precio']),alignment: Alignment.topRight,)],),)],
              )],),
              )],
            )],
            )
    ]);
  
}

Widget strellasTop(){

  return Container(height: 1,child: IconButton(onPressed: null, icon: Icon(Icons.star_rounded),));
}

}