import 'package:flutter/material.dart';
import 'package:flutter_base_inicial/src/pages/alert_page.dart';
import 'package:flutter_base_inicial/src/pages/animated_container.dart';
import 'package:flutter_base_inicial/src/pages/avatar_page.dart';
import 'package:flutter_base_inicial/src/pages/card_page.dart';
import 'package:flutter_base_inicial/src/pages/home_page.dart';
import 'package:flutter_base_inicial/src/pages/input_page.dart';
import 'package:flutter_base_inicial/src/pages/list_page.dart';
import 'package:flutter_base_inicial/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
return <String, WidgetBuilder>{
    '/'                   : (BuildContext context) => HomePage(),
    'alert'                 : (BuildContext context) => AlertPage(),
    'avatar'                : (BuildContext context) => AvatarPage(),
    'card'                  : (BuildContext context) => CardPage(),
    'animatedContainer'     : (BuildContext context) => AnimatedContainerPage(),
    'inputs'                : (BuildContext context) => InputPage(),
    'slider'                : (BuildContext context) => SliderPage(),
    'list'                  : (BuildContext context) => ListPage(),
  };
}
