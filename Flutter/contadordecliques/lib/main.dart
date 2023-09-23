import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String texto = 'teste';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: GestureDetector(
      child: Text('$texto'),
      onTap: () {
        setState(() {
          texto = 'sucesso';
        });
      },
    )));
  }
}
