import 'package:flutter/material.dart';

class BlueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('BlueScreen'),
        ),
        body: Center(
          child: Text('No pasa par\u{00E1}metros solo muestra la pantalla',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, color: Colors.white)),
        ));
  }
}
