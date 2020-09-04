import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _page_1(),
          _page_2(),
        ],
      ),
    );
  }

  Widget _page_1() {
    return Stack(
      children: [
        _backgroundColor(),
        _backgroundImage(),
        _texts(),
      ],
    );
  }

  Widget _page_2() {
    return Center(
      child: Text('data 2'),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11`',
            style: textStyle,
          ),
          Text(
            'Wednesday',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
