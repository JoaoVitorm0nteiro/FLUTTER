import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(title: 'Flutterando'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
        child: Center(child: Text('Flutterando')),
      ),
    );
  }
}
