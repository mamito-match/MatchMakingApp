import 'package:flutter/material.dart';
import 'route.dart' as route;

 // code for our main layout
 void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter navigation',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // code that is setting the first page you will see when you open your app
      onGenerateRoute: route.controller,
      initialRoute: route.welcomePage,
    );
  }
}