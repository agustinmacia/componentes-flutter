import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Juli','Es','Un','Puppy','Super','Fiacoso'];

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
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.arrow_right),
              onTap: (){},
            ),
            Divider(),
          ],
        );

    }).toList();

  }


}