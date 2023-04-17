/*
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './timer.dart';
import './timermodel.dart';
import 'settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;
  final CountDownTimer timer = CountDownTimer();

  @override
  Widget build(BuildContext context) {
    timer.startWork();
    final List<PopupMenuItem<String>> menuItems = [];
    menuItems.add(PopupMenuItem(
      value: 'Settings',
      child: Text('Settings'),
    ));

    return Scaffold(
        appBar: AppBar(
          title: Text('My Work Timer'),
          actions: [
            PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return menuItems.toList();
            }, onSelected: (s) {
              if (s == 'Settings') {
                goToSettings(context);
              }
            })
          ],
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                    child: ProductivityButton(
                        color: Color(0xff009688),
                        text: "Work",
                        onPressed: () => timer.startWork())),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                    child: ProductivityButton(
                        color: Color(0xff607D8B),
                        text: "Short Break",
                        onPressed: () => timer.startBreak(true))),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                    child: ProductivityButton(
                        color: Color(0xff455A64),
                        text: "Long Break",
                        onPressed: () => timer.startBreak(false))),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
            Expanded(
              child: StreamBuilder(
                  initialData: '00:00',
                  stream: timer.stream(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    TimerModel timer = (snapshot.data == '00:00')
                        ? TimerModel('00:00', 1)
                        : snapshot.data;
                    return Container(
                        child: CircularPercentIndicator(
                      radius: availableWidth / 2,
                      lineWidth: 10.0,
                      percent: timer.percent,
                      center: Text(timer.time,
                          style: Theme.of(context).textTheme.headline4),
                      progressColor: Color(0xff009688),
                    ));
                  }),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                    child: ProductivityButton(
                        color: Color(0xff212121),
                        text: 'Stop',
                        onPressed: () => timer.stopTimer())),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                    child: ProductivityButton(
                        color: Color(0xff009688),
                        text: 'Restart',
                        onPressed: () => timer.startTimer())),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            )
          ]);
        }));
  }

  void emptyMethod() {}

  void goToSettings(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsScreen()));
  }
}
*/

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './timer.dart';
import './timermodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  CountDownTimer timer;

  @override
  Widget build(BuildContext context) {
    timer = CountDownTimer(context);
    timer.startWork();
    TextEditingController controller = TextEditingController();
    TextField field = TextField(
      controller: controller,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('My Work Timer'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: field,
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: StreamBuilder(
                    initialData: '00',
                    stream: timer.stream(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      TimerModel timer = (snapshot.data == '00')
                          ? TimerModel('00', 1)
                          : snapshot.data;
                      return Container(
                        child: CircularPercentIndicator(
                          radius: availableWidth / 2,
                          lineWidth: 10.0,
                          percent: timer.percent,
                          center: Text(timer.time,
                              style: Theme.of(context).textTheme.headline4),
                          progressColor: Color(0xff009688),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      timer.set(int.parse(controller.text));
                      timer.startTimer();
                    },
                    child: Text('Set'),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          );
        },
      ),
    );
  }
}
