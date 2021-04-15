import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.orange,
      label: 'Dimensión del Slider',
      //divisions: 25,
      value: _valorSlider, 
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
          _valorSlider = valor;
        });
        
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://vader.news/__export/1611097172597/sites/gadgets/img/2021/01/19/lili-reinhart-de-riverdale-bisexuak.jpg_256019641.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}