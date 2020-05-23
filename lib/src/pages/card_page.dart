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
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _cardTipo2() {
    
    final card =  Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          
          FadeInImage(
            image: NetworkImage('https://i.pinimg.com/originals/34/59/3b/34593bc301b2ab36e6fa1d7f7799d6fa.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 260.0,
            fit: BoxFit.cover,
          ),
          Container(
            child : Row(
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
          ),
          padding: EdgeInsets.all(10.0),
          )
          
        ],
      )
    );
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ]
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}