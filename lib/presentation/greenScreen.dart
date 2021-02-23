import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  final Map arguments;

  const GreenScreen({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("GreenScreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical:10),
                child:Text("Varios par\u{00E1}metros",style: TextStyle(fontSize: 35, ))
              ),
            ),
            _listTileValue('list= ${arguments['list']}', 1),
            _listTileValue('int= ${arguments['int'].toString()}', 2),
            _listTileValue('boolean= ${arguments['boolean'].toString()}', 3),
            _listTileValue('double= ${arguments['double'].toString()}', 4),
            _listTileValue('String= ${arguments['String']}', 5),
          ],
        ),
      ),
    );
  }

  ListTile _listTileValue(String value, int index) {
    return ListTile(
      title: Text('Par\u{00E1}metro ${index.toString()}'),
      subtitle: Text(value),
    );
  }
}
