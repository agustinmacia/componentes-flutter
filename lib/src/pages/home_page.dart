import 'package:Componentes/src/providers/menu_provider.dart';
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

    
    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        
        return ListView(
          children: _listaDeItems(snapshot.data),
        );

      },
    );

  }

  List<Widget> _listaDeItems(List<dynamic> dataList) {

    final List<Widget> opciones = [];

    dataList.forEach((opcion) {

      final widgetTemp = ListTile(
        title: Text(opcion['texto']),
        leading: Icon(Icons.monetization_on, color: Colors.amber),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
        onTap: () {

        },
      );

      opciones..add(widgetTemp)
               ..add(Divider());

    }); 
    
    return opciones;
  }
}