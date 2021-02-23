import 'package:flutter/material.dart';
import 'package:routes/presentation/blueScreen.dart';
import 'package:routes/presentation/greenScreen.dart';
import 'package:routes/presentation/home/homeScreen.dart';
import 'package:routes/presentation/pinkScreen.dart';
import 'package:routes/routes/pathName.dart';

/*In this example we take the arguments with a map but it 
can be customized according to what is required on each screen */
class CustomRouter {
  // ignore: missing_return
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        break;
      case blueRoute:
        return MaterialPageRoute(
          builder: (_) => BlueScreen(),
        );
        break;
      case pinkRoute:
        return MaterialPageRoute(
          builder: (_) => PinkScreen(arguments: settings.arguments),
        );
        break;
      case greenRoute:
        return MaterialPageRoute(
          builder: (_) => GreenScreen(arguments: settings.arguments),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        break;
    }
  }
}
