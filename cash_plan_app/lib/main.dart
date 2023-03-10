import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        children: const <Widget>[
          Card(
            elevation: 5,
            color: Colors.blue,
            child: SizedBox(
              width: 100,
              child: Text('Chart!'),
            ),
          ),
          Card(
            elevation: 5,
            child: Text('List Of Tx'),
          ),
        ],
      ),
    );
  }
}
