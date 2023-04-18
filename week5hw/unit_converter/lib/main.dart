import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final Map<String, int> _measuresMap = {
    '+': 0,
    '-': 1,
    '*': 2,
    '/': 3,
  };

  double _numberFrom1;
  double _numberFrom2;
  String _resultMessage;

  String _startMeasure;

  final List<String> _measures = [
    '+',
    '-',
    '*',
    '/',
  ];

  @override
  Widget build(BuildContext context) {
    final TextStyle inputStyle = TextStyle(
      fontSize: 20,
      color: Colors.blue[900],
    );
    final TextStyle labelStyle = TextStyle(
      fontSize: 24,
      color: Colors.grey[700],
    );

    return MaterialApp(
        title: 'Measures Converter',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Measures Converter'),
            ),
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 700.0),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            'Value1',
                            style: labelStyle,
                          ),
                          Spacer(),
                          TextField(
                            style: inputStyle,
                            decoration: InputDecoration(
                              hintText:
                                  "Please insert the measure to be converted",
                            ),
                            onChanged: (text) {
                              var rv = double.tryParse(text);
                              if (rv != null) {
                                setState(() {
                                  _numberFrom1 = rv;
                                });
                              }
                            },
                          ),
                          Spacer(),
                          Text(
                            'Operation',
                            style: labelStyle,
                          ),
                          DropdownButton(
                            isExpanded: true,
                            items: _measures.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: inputStyle,
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _startMeasure = value;
                              });
                            },
                            value: _startMeasure,
                          ),
                          Spacer(),
                          Text(
                            'Value2',
                            style: labelStyle,
                          ),
                          Spacer(),
                          TextField(
                            style: inputStyle,
                            decoration: InputDecoration(
                              hintText:
                                  "Please insert the measure to be converted",
                            ),
                            onChanged: (text) {
                              var rv = double.tryParse(text);
                              if (rv != null) {
                                setState(() {
                                  _numberFrom2 = rv;
                                });
                              }
                            },
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          ElevatedButton(
                            child: Text('Result', style: inputStyle),
                            onPressed: () {
                              double result;
                              setState(() {
                                if (_startMeasure == '+') {
                                  result = _numberFrom1 + _numberFrom2;
                                } else if (_startMeasure == '-') {
                                  result = _numberFrom1 - _numberFrom2;
                                } else if (_startMeasure == '*') {
                                  result = _numberFrom1 * _numberFrom2;
                                } else if (_startMeasure == '/') {
                                  result = _numberFrom1 / _numberFrom2;
                                }
                                _resultMessage = result.toString();
                              });
                            },
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Text((_resultMessage == null) ? '' : _resultMessage,
                              style: labelStyle),
                          Spacer(
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                ))));
  }

  // @override
  // void initState() {
  //   _numberFrom1 = 0;
  //   _numberFrom2 = 0;
  //   super.initState();
  // }

  //String _resultMessage;
}
