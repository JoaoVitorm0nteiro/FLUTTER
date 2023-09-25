import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TAVA DANDO PROBLEMA POR CAUSA DO CONST NÃO SEI O PORQUE
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.indigoAccent),
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text('teste 1')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text('teste 2')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('teste 3')),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.purpleAccent),
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text('teste 1')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text('teste 2')),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('teste 3')),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
