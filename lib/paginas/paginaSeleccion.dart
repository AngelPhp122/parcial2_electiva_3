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
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
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
          color: Colors.indigo, 
          height: 100, 
          width: 280, 
          child: Column(
            children: [Container(
              color: Colors.black12, 
              width: 250,
              height: 20, 
              child: Text(Sillas[1]['title']),),
              Column(
                children: [Container(
                  child: Row(children: [Container(child: IconButton(onPressed: null,
                   icon: Icon(Icons.star,color: Colors.yellow, ), 
                   alignment: Alignment.topLeft,),height: 10, width: 22,),
                   Container(child: IconButton(onPressed: null,
                   icon: Icon(Icons.star,color: Colors.yellow,), 
                   alignment: Alignment.topLeft,),height: 10, width: 22),
                   Container(child: IconButton(onPressed: null,
                   icon: Icon(Icons.star,color: Colors.yellow,), 
                   alignment: Alignment.topLeft,),height: 10, width: 22),
                   Container(child: IconButton(onPressed: null,
                   icon: Icon(Icons.star,color: Colors.yellow,), 
                   alignment: Alignment.topLeft,),height: 10, width: 22),
                   Container(child: IconButton(onPressed: null,
                   icon: Icon(Icons.star,), 
                   alignment: Alignment.topLeft,),height: 10, width: 22, ),],), 
                   color: Colors.redAccent,
                    height: 2,
                     width: 500,),],),],),),
              Row(
            children: [Container(
              color: Colors.blueAccent, 
              height: 100, 
              width: 75, 
              child: Column(
                children: [Container(color: Colors.black12,
                width: 170,
                height: 20, child: Text(Sillas[2]['precio']),alignment: Alignment.topRight,),],),),],
              ),],),
              ),],
            ),],
            )
    ,],);
  
}

}