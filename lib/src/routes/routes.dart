import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/pages/avatar_page.dart';
import 'package:Componentes/src/pages/card_page.dart';
import 'package:Componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map <String, WidgetBuilder> getApplicationsRoutes() {

  return <String, WidgetBuilder> {

      '/'      : (BuildContext context) => HomePage(),
      'alert'  : (BuildContext context) => AlertPage(),
      'avatar' : (BuildContext context) => AvatarPage(),
      'card'  : (BuildContext context) => CardPage(),
  };

  
}