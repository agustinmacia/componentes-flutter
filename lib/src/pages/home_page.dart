import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/providers/menu_provider.dart';
import 'package:Componentes/src/utils/icon_string_util.dart';
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
          children: _listaDeItems(snapshot.data, context),
        );

      },
    );

  }

  List<Widget> _listaDeItems(List<dynamic> dataList, BuildContext context) {

    final List<Widget> opciones = [];


    dataList.forEach((opcion) {

      final widgetTemp = ListTile(
        title: Text(opcion['texto']),
        leading: getIcon(opcion['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
        onTap: () {
          
          Navigator.pushNamed(context, opcion['ruta']);

          // final route = MaterialPageRoute( 
          //   builder: (context) {
          //     return AlertPage();
          //   }
          // );
          // Navigator.push(context, route);



        },
      );

      opciones..add(widgetTemp)
               ..add(Divider());

    }); 
    
    return opciones;
  }
}