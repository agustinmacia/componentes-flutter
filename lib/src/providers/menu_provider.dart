//Archivo para el manejo del JSON
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider() {


    cargarDatos();
  }

  Future <List <dynamic>> cargarDatos() async {

    final response =  await rootBundle.loadString('data/menu_opts.json'); 

      Map mapDatos = json.decode(response);
      opciones = mapDatos['rutas'];

      return opciones;
  }

}


final menuProvider = new _MenuProvider();