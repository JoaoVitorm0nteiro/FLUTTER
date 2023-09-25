import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      child: Text(texto),
      onTap: () {
        setState(() {
          texto = 'sucesso';
        });
      },
    )));
  }
}
