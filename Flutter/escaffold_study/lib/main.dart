import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
        margin: EdgeInsets.all(100),
        alignment: AlignmentDirectional.center,
        child: Text('Teste'),
      ),
    );
  }
}
