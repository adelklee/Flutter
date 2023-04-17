import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exam 1",
      home: Scaffold(
        appBar: AppBar(
          title: Text("New layout"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                image: AssetImage('images/airplane.png'),
                                height: 350,
                              ),
                            ),
                            Text('Airplane',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800])),
                            Text(
                              'Discover the World',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                            ElevatedButton(
                              child: Text('Buy'),
                              onPressed: () => contactUs(context, 1),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                image: AssetImage('images/banana.png'),
                                height: 350,
                              ),
                            ),
                            Text('Banana',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800])),
                            Text(
                              'Discover the World',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                            ElevatedButton(
                              child: Text('Buy'),
                              onPressed: () => contactUs(context, 2),
                            ),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                image: AssetImage('images/bell.png'),
                                height: 350,
                              ),
                            ),
                            Text('Bell',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800])),
                            Text(
                              'Discover the World',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                            ElevatedButton(
                              child: Text('Buy'),
                              onPressed: () => contactUs(context, 3),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                image: AssetImage('images/cactus.png'),
                                height: 350,
                              ),
                            ),
                            Text('Cactus',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800])),
                            Text(
                              'Discover the World',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                            ElevatedButton(
                              child: Text('Buy'),
                              onPressed: () => contactUs(context, 4),
                            ),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context, int num) {
    String text = "";
    switch (num) {
      case 1:
        text += "airplane";
        break;
      case 2:
        text += "banana";
        break;
      case 3:
        text += "bell";
        break;
      case 4:
        text += "cactus";
        break;
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notice'),
          content: Text('You bought 1 ' + text),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
