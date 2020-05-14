import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Cartas'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {

          Navigator.pop(context);
        },
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1()
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo Tarjeta'),
            subtitle: Text('Aqui se encuentra el subtitlo de la tarjeta que estoy poniendo en esta pagina'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {

                },
              ),
              FlatButton(
                child: Text('Comprar'),
                onPressed: () {

                },

              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );

  }
}