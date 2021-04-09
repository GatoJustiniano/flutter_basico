import 'package:flutter/material.dart';
import 'package:flutter_base_inicial/src/pages/alert_page.dart';
import 'package:flutter_base_inicial/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
          return MaterialPageRoute (
            builder: (context) => AlertPage(),
          );
      },
    );
  }
}