import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Card'),

      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 25.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined),
            title: Text('Titulo de cardTipo1'),
            subtitle: Text('Se mostrará un resumen de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {}, 
                child: Text('Ok')
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/503/781/128/tv-show-riverdale-camila-mendes-lili-reinhart-wallpaper-preview.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Image(
            image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/503/781/128/tv-show-riverdale-camila-mendes-lili-reinhart-wallpaper-preview.jpg'),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('imagen del internet')
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.red,
            blurRadius: 10.0,
            spreadRadius: 3.0,
            offset: Offset(2.0, 2.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22.0),
        child: card,
      ),
      
    );
  }
}