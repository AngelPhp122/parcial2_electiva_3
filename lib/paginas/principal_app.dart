import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parcial2_electiva_3/archivosJSON/archivosJSON.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2_electiva_3/paginas/paginaSeleccion.dart';



class Principal extends StatefulWidget {
  final dynamic valores;
  Principal({Key? key, this.valores}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
 int activoMenu1 = 0;
  int activoMenu2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white, appBar: AppBar( backgroundColor: Colors.transparent,
       leading: IconButton(onPressed: null, icon: Icon(Icons.menu)), 
       actions: <Widget>[IconButton(onPressed: null, icon: Icon(Icons.shopping_bag))],
       title: Text('Comercial SIVAR'),),
       body: bodyParcial2());
  }
       

  
 Widget bodyParcial2(){
    return SingleChildScrollView(
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: List.generate(listaFilaUno.length, (index){
                  return Padding(padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        activoMenu1 = index;
                      });
                    },
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text(listaFilaUno[index],
                    style: TextStyle(
                      fontSize: 15,
                      color: activoMenu1 == index
                      ? Colors.grey
                      : Colors.grey,
                      fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                  :Container()
                  ],
                  ),
                  ),
                  );
                  
                })
              ),
            ),
          ),
          ],),SizedBox(
            height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate( listaFilaUno.length-1, (index) {
                  return Padding(padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: paginaSeleccion(
                                 valores : Sillas[index],
                              ),
                              type: PageTransitionType.scale));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Sillas[index]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          Sillas[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            "\$" + Sillas[index]['precio'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),);
                }),
              ),
              ),
            ),
          SizedBox(
            height: 10,
          ),
        ],
      
      ), 
    );
  }
 
     /*ListView(
         children: [
           Padding(padding: EdgeInsets.all(10),
           ),
           SizedBox(
             height: 15,
           ),
           CarouselSlider(items: [Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(55)),
               boxShadow: [BoxShadow(color: Colors.black38,
               offset: Offset(2.0,2.0),
               blurRadius: 3.0,
               spreadRadius: 2.0)],
               image: DecorationImage(image: AssetImage("assets/images/Grupo1.png"),
               fit: BoxFit.cover)
             )
           )
           ,Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(55)),
               boxShadow: [BoxShadow(color: Colors.black38,
               offset: Offset(2.0,2.0),
               blurRadius: 3.0,
               spreadRadius: 2.0)],
               image: DecorationImage(image: AssetImage("assets/images/Grupo2.png"),
               fit: BoxFit.cover)
             )
           ),
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(55)),
               boxShadow: [BoxShadow(color: Colors.black38,
               offset: Offset(2.0,2.0),
               blurRadius: 3.0,
               spreadRadius: 2.0)],
               image: DecorationImage(image: AssetImage("assets/images/Grupo3.png"),
               fit: BoxFit.cover)
             )
           )
           ,Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(55)),
               boxShadow: [BoxShadow(color: Colors.black38,
               offset: Offset(2.0,2.0),
               blurRadius: 3.0,
               spreadRadius: 2.0)],
               image: DecorationImage(image: AssetImage("assets/images/Grupo4.png"),
               fit: BoxFit.cover)
             )
           )],
            options: CarouselOptions(
             height: 500.0,
             scrollDirection: Axis.horizontal
           ))
         ], 
       ) */

}