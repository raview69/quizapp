import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: const [
            Text('data'),
            RaisedButton(
              onPressed: null,
              child: Text('asss'),
              ),
          ],
        ),
      ),
    );
  }
}