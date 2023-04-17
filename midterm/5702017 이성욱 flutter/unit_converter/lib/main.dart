import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Text ftext1 = Text('');
  Text ftext2 = Text('');
  String dropdownValue = list.first;
  Text result = Text('');

  @override
  Widget build(BuildContext context) {
    var ddb = DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String value) {
        dropdownValue = value;
        // This is called when the user selects an item.
        setState(() {});
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    return MaterialApp(
      title: 'Exam 2',
      home: Scaffold(
        appBar: AppBar(title: Text('String test')),
        body: Center(
          child: Column(
            children: [
              Text('String 1'),
              TextField(
                onChanged: (text) {
                  ftext1 = Text(text.toString());
                },
              ),
              Text('String 2'),
              TextField(
                onChanged: (text) {
                  ftext2 = Text(text.toString());
                },
              ),
              Text('Function'),
              Padding(
                padding: EdgeInsets.all(15),
                child: ddb,
              ),
              ElevatedButton(
                child: Text('Run'),
                onPressed: () {
                  if (dropdownValue == 'connect') {
                    result =
                        Text(ftext1.data.toString() + ftext2.data.toString());
                  } else if (dropdownValue == 'count') {
                    result = Text(
                        '${ftext1.data.toString().length + ftext2.data.toString().length}');
                  }
                  setState(() {});
                },
              ),
              result,
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> list = <String>['connect', 'count'];
