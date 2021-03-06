import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
 
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _checkBox(),
            _crearSlide(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlide() {
    
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      min: 10.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: (_bloquearCheck) ? null : (valor) {     
          
          setState(() {
          _valorSlider = valor;
          });
      },

    ); 
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://www.latercera.com/resizer/niUYLUJMbTH0WLQ6sqgFKTTNSyM=/900x600/filters:focal(381x326:391x316)/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/B2YTK3CB3BD6BESUH6ZX4675Z4.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );


  }

  Widget _checkBox() {

    return CheckboxListTile(
      activeColor: Colors.indigoAccent,
      title: Text('Editar Imagen'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {

    return SwitchListTile(
      activeColor: Colors.indigo,
      title: Text('Switch'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

  }
}