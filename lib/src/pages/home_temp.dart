import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorto()
      ),
    );
  }


  List<Widget> _crearItems(){
    
    List<Widget> lista = new List<Widget>();

    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );

      lista..add(tempWidget)
           ..add(Divider());
    }
    
    return lista;
  }

  List<Widget> _crearItemsCorto() {

    return opciones.map((widget){

        return Column(
          children: <Widget>[
            ListTile(
              title: Text(widget + '!'),
            ),
            Divider(),
          ],
        );

    }).toList();

  }


}