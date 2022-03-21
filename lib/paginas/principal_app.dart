import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white, appBar: AppBar(
       leading: IconButton(onPressed: null, icon: Icon(Icons.menu)), 
       actions: <Widget>[IconButton(onPressed: null, icon: Icon(Icons.shopping_bag))],
       title: Text('Comercial SIVAR'),), 
     
    );
  }

  
}