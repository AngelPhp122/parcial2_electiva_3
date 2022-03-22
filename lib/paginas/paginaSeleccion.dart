import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:parcial2_electiva_3/archivosJSON/archivosJSON.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2_electiva_3/paginas/paginaSeleccion.dart';
import 'package:parcial2_electiva_3/paginas/principal_app.dart';

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
      backgroundColor: Colors.grey, appBar: AppBar(backgroundColor: Colors.transparent, leading: IconButton(onPressed: retornar, icon: Icon(Icons.arrow_back)),  actions: <Widget>[IconButton(onPressed: null, icon: Icon(Icons.shopping_bag))]),
    body: bodyPaginaSeleccion(), 
    );
  }

Widget bodyPaginaSeleccion(){

  return Container(
    child: Column(
      children: [Container( 
        width: 200, 
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Sillas[1]['img'])),
          )),
        Container( 
        width: 400, 
        height: 360,
        decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(15)
          ),child: Column(children: [Container(
           
            width: 370, 
            height: 70, 
            child: Row(
              children: [Container(
                 
                width: 180, 
                height: 15, 
                child: Text(Sillas[1]['title']),),
                Container(
                width: 180, 
                height: 15, child: Text(Sillas[2]['precio']),alignment: Alignment.topRight,)]
                ,)
                ,),Container( width: 500, height: 30, 
                child: Row(
                  children: [IconButton(onPressed: null, icon: Icon(Icons.star, color: Colors.yellow),alignment: Alignment.topLeft,),
                  IconButton(onPressed: null, icon: Icon(Icons.star, color: Colors.yellow,),alignment: Alignment.topLeft,),
                  IconButton(onPressed: null, icon: Icon(Icons.star, color: Colors.yellow),alignment: Alignment.topLeft,),
                  IconButton(onPressed: null, icon: Icon(Icons.star, color: Colors.yellow),alignment: Alignment.topLeft,),
                  IconButton(onPressed: null, icon: Icon(Icons.star,),alignment: Alignment.topLeft,),
                  Text("200 Reviews", textAlign: TextAlign.right,)],mainAxisAlignment: MainAxisAlignment.start,), 
                  ),
                Container( width: 500, height: 150, child: Text("\nUna silla bien guanaca, esto es para llenar \nla descripcion\n\n\n\n\n\n   color"),),
                Container( width: 500, height: 40,
                child: Row(children: [IconButton(onPressed: sillaRoja, icon: Icon(Icons.circle, color: Colors.green,)),
                IconButton(onPressed: null, icon: Icon(Icons.circle, color: Colors.yellow,)),
                IconButton(onPressed: null, icon: Icon(Icons.circle, color: Colors.red,))],mainAxisAlignment: MainAxisAlignment.start,),),
                Container(width: 300, height: 50,child: RaisedButton(color: Colors.brown, child: Text("comprar"),onPressed: (){},),),]
                ,)
                ,)
                ,],
          mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,),
  );
}

Widget sillaRoja(){

  return Container(
        width: 200, 
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Sillas[0]['img'])),
          ));
}

Widget sillaVerde(){

  return Container(
        width: 200, 
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Sillas[0]['img'])),
          ));
}
Widget sillaAmarillo(){

  return Container(
        width: 200, 
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Sillas[0]['img'])),
          ));
}

Widget retornar (){

  return Container(child: GestureDetector(onTap: (){
    Navigator.push(context, PageTransition(child: Principal(), type: PageTransitionType.scale));
  },),);
}


}