import 'package:flutter/material.dart';

class PinkScreen extends StatelessWidget {
  final Map arguments;

  const PinkScreen({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar(title: Text('PinkScreen')),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textValue('Par\u{00E1}metro 1'),
              _textValue(arguments['value']),
            ],
          ),
        ),
      ),
    );
  }

  Text _textValue(String value) {
    return Text(
      value,
      style: TextStyle(fontSize: 35, color: Colors.white),
    );
  }
}
