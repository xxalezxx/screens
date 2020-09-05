import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';

import 'package:screens/src/pages/basic_page.dart';
import 'package:screens/src/pages/menu_page.dart';
import 'package:screens/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desings',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'menu': (BuildContext context) => MenuPage(),
      },
      initialRoute: 'menu',
    );
  }
}
