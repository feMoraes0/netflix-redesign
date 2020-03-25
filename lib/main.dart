import 'package:flutter/material.dart';
import 'package:netflixapp/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(37, 37, 37, 1.0),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(37, 37, 37, 1.0),
          elevation: 0.0,
        ),
      ),
      home: Home(),
    );
  }
}