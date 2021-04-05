import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemCorto()
      ),
    );
  }



  List<Widget> _crearItemCorto(){

    return opciones.map((item) {
      
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Sub'),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider()
        ],
      );
    }).toList();

  }


}