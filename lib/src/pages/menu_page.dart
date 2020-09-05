import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            _background(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _title(),
                  _roundBottons(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _bottonNavigatorBar(context),
        //     BottomNavigationBar(items: <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.calendar_today), title: Container( )),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.pie_chart_outlined), title: Container()),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.supervised_user_circle), title: Container()),
        // ]),
      ),
    );
  }

  Widget _background() {
    final _gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final _box = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: [_gradient, Positioned(top: -100.0, child: _box)],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                )),
          ],
        ),
      ),
    );
  }

  Widget _bottonNavigatorBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bubble_chart,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30.0,
              ),
              title: Container()),
        ]));
  }

  Widget _roundBottons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
        TableRow(children: [
          _createRoundBotton(Colors.blue, Icons.border_all, "General"),
          _createRoundBotton(Colors.purple, Icons.directions_bus, "Bus"),
        ]),
      ],
    );
  }

  Widget _createRoundBotton(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.8),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.pinkAccent,
                child: Icon(
                  icon,
                  color: color,
                  size: 30.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
