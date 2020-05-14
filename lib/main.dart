import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/pages/avatar_page.dart';
import 'package:Componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      initialRoute: '/',
      routes: <String,WidgetBuilder> {

        '/'       : (BuildContext context) => HomePage(),
        'alert'  : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),

      },
    );
  }
}