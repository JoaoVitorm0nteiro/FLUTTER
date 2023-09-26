import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Projeto Faculdade',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Quiz UniFametro'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Center(
          child: Container(
            //container pai
            width: 350,
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              //column onde ficarão os widgets
              children: <Widget>[
                Container(
                  //por a logo da faculdade
                  width: 250,
                  height: 100,
                  margin: const EdgeInsets.all(45),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                ),
                const Text(
                  'Quiz UniFametro',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  //Container do textField
                  //decoration:
                  //  BoxDecoration(border: Border.all(color: Colors.black)),
                  margin: const EdgeInsets.all(20),
                  child: const SizedBox(
                      width: 150,
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Insira seu nome'))),
                ),
                Center(
                    child: Container(
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      child: Text('ENVIAR'),
                      onPressed: () {},
                    ),
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
