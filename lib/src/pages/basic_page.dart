import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _headImage(),
              _firstTitle(),
              _bottonPad(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
            ],
          ),
        ),
      ),
    );
  }

  _headImage() {
    return Image(
      image: NetworkImage(
          'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
    );
  }

  _firstTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Some picture',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Nice place',
                    style: subTitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  _bottonPad() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _button(Icons.call, 'CALL'),
        _button(Icons.near_me, 'ROUTE'),
        _button(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _button(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  _createText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Quis proident esse velit sit esse velit laboris est ex. Eiusmod cillum commodo ullamco ut sunt laborum ad tempor non nisi laboris exercitation. Qui officia deserunt officia irure cillum exercitation dolore aliquip aute consequat proident exercitation nisi.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
