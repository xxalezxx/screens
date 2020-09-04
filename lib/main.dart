import 'package:flutter/material.dart';
import 'package:screens/src/pages/basic_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desings',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
      },
      initialRoute: 'basic',
    );
  }
}
