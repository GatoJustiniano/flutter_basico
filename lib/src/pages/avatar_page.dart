import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.wikia.nocookie.net/riverdale/images/b/b8/Lili_Reinhart.png/revision/latest/scale-to-width-down/350?cb=20190711215453&path-prefix=es'),
              radius: 30.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('AJ'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://vader.news/__export/1611097172597/sites/gadgets/img/2021/01/19/lili-reinhart-de-riverdale-bisexuak.jpg_256019641.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}