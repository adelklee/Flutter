import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './timer.dart';
import './timermodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam 3',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  CountDownTimer timer;
  bool over = false;

  @override
  Widget build(BuildContext context) {
    timer = CountDownTimer(context);
    timer.startWork();

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
                  child: StreamBuilder(
                    initialData: '00',
                    stream: timer.stream(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      TimerModel timers;
                      if (snapshot.data == '00') {
                        timers = TimerModel('00', 1);
                      } else {
                        if (!timer.isAcitive()) {
                          over = true;
                        }
                        timers = snapshot.data;
                      }
                      if (!over)
                        return Container(
                          child: CircularPercentIndicator(
                            radius: availableWidth / 2,
                            lineWidth: 10.0,
                            percent: timers.percent,
                            center: Text(timers.time,
                                style: Theme.of(context).textTheme.headline4),
                            progressColor: Color(0xff009688),
                          ),
                        );
                      else
                        return Container(
                          child: Image.network(
                              'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png'),
                        );
                    },
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
