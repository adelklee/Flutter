import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String text1, text2;
  TextField op1, op2;
  Text result;
  ElevatedButton button;

  MyAppState() {
    text1 = "";
    text2 = "";

    op1 = TextField(
      onChanged: (text) {
        text1 = text;
      },
    );
    op2 = TextField(
      onChanged: (text) {
        text2 = text;
      },
    );

    button = ElevatedButton(
      child: const Text('Calculate'),
      onPressed: () {
        setState(() {
          pressEvent();
        });
      },
    );

    result = const Text('answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mesures Converter',
      home: Scaffold(
        appBar: AppBar(title: const Text('Mesures Converter')),
        body: Center(
          child: Column(
            children: [
              op1,
              op2,
              button,
              result,
            ],
          ),
        ),
      ),
    );
  }

  void pressEvent() {
    result = Text(text1 + text2);
  }
}
