import 'package:flutter/material.dart';
import 'package:match_making_app/src/features/auth/presentation/pages/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    static const String title = 'Mamito';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: WelcomePage(),
        debugShowCheckedModeBanner: false,

      );
}


