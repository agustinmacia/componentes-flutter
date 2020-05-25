import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;
  
  @override
  void initState() { 
    super.initState();
    _agregarImagenes();
    _scrollController.addListener(() {
      if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        //_agregarImagenes();
        _traerData();
      }
     });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),    
        ],
      ),
      
    );
  }

  Widget _crearLista() {

    return RefreshIndicator(
        onRefresh: obtenerPrimeraPagina,
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {

          final imagen = _listaNumeros[index];

          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
            placeholder: AssetImage('assets/loading.gif'),
          );

        },
      ),
    );
  }

  Future obtenerPrimeraPagina() async {

    final duration = Duration(seconds: 2);

    new Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregarImagenes();
    });

    return Future.delayed(duration);
  }

  void _agregarImagenes() {

    for(var i= 1; i < 10; i++) {

      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
      
    }

    setState(() {
      
    });
  }

  Future _traerData() async{

    _isLoading = true;
    final duration = new Duration(seconds : 2);

    setState(() {
      new Timer(duration, callbackHTTP);
    });

  }

  void callbackHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,  duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    _agregarImagenes(); 
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    }else {
      return Container();
    }
  }
}