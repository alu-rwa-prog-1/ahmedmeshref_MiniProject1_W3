import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodNOW',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'FoodNOW'),
    );
  }
}

