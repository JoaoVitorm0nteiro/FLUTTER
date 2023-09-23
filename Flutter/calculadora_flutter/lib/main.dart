import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 36, 49, 128)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numero1 = 0;
  int numero2 = 0;
  int soma = 0;

  void calcularnumeros() {
    setState(() {
      soma = numero1 + numero2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Calculadora'),
            SizedBox(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Informe o primeiro número:',
                ),
                onChanged: (value) {
                  numero1 = int.parse(value);
                },
              ),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Informe o segundo número:',
                ),
                onChanged: (value) {
                  numero2 = int.parse(value);
                },
              ),
            ),
            const Text(
              'Resultado:',
            ),
            Text(
              '$soma',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              child: Text('Calcular'),
              onPressed: calcularnumeros,
              //child: const Icon(Icons.app_registration),
            ),
          ],
        ),
      ),
    );
  }
}
