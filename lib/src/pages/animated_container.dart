import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double  _width   = 50.0;
  double  _height  = 50.0;
  Color   _color    = Colors.orange;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo de Contenedor Animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,

          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow_rounded),
        onPressed: _cambiarForma
        ),
    );
  }
      
  void _cambiarForma() {
    
    final random    = Random();

    setState(() {
      _width    = random.nextInt(300).toDouble();
      _height   = random.nextInt(300).toDouble();
      _color    = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });

  }
}