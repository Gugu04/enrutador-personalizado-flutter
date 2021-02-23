import 'package:flutter/material.dart';
import 'package:routes/routes/pathName.dart';

class HomeScreen extends StatelessWidget {
//a list is created to pass as a parameter to the greenScreen
  final listFruits = List<String>()
    ..add('Uvas')
    ..add('Manzana')
    ..add('Fresa')
    ..add('Mango');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //does not pass parameters to the blueScreen
            ListTile(
              title: Text(blueRoute),
              subtitle: Text('Ningun par\u{00E1}metro'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.pushNamed(context, blueRoute),
            ),
            //pass a parameter to the pinkScreen
            ListTile(
                title: Text(pinkRoute),
                subtitle: Text('Un par\u{00E1}metro'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.pushNamed(context, pinkRoute,
                    arguments: {'value': '¡Hola que tal!'})),
            //pass different types of parameters to the greenScreen
            ListTile(
              title: Text(greenRoute),
              subtitle: Text('Varios par\u{00E1}metros'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.pushNamed(context, greenRoute, arguments: {
                'list': listFruits,
                'int': 4,
                'boolean': true,
                'double': 23.87,
                'String': 'Hola'
              }),
            ),
          ],
        ),
      ),
    );
  }
}
