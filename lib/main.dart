import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quizzapp Flutter Ashelole'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var questions = [
    'What is your name ?',
    'What is your age ?',
    'What is your color ?'
  ];

  var questionsIndex = 0;

  void onPressed() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    // ignore: avoid_print
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              questions[0],
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text(
                'Answer',
              ),
            )
          ],
        ),
      ),
    );
  }
}
