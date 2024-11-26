import 'package:flutter/material.dart';
import 'package:to_do_app/HomeScrean.dart';
void main() {
  runApp(MyApp()) ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        Homescrean.routeName: (context) => Homescrean(),
      },
      initialRoute: Homescrean.routeName,
    );
  }
}
