import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Alerta'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta!'),
          onPressed: () => _mostrarAlert(context), 
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Titulo de Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido detallado de la Alerta'),
              FlutterLogo(
                size: 75.0,
              )
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(), 
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () => Navigator.of(context).pop(), 
            )
          ],
        );
      }
    );
  }
}