import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }



  Widget _lista() {

    return ListView(

      children: _listaDeItems(),

    );

  }

  List<Widget> _listaDeItems() {

    return [
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
      Divider(),
      ListTile(title: Text('Hola Mundo')),
    ];

  }
}