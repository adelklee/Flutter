import 'package:flutter/material.dart';
import 'package:study1116/http_helper.dart';

void main() => runApp(MyMovies());

class MyMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Movies',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HttpHelper? helper;
  String? data1;
  List? data2;
  List<Widget> column = [];

  Future init() async {
    data1 = await helper!.getUpcoming();
    data2 = await helper!.getUpcomingList();

    for (int i = 0; i < data2!.length; i++) {
      column.add(Text(data2![i]));
    }
    setState(() {
      data1 = data1;
      data2 = data2;
    });
  }

  @override
  void initState() {
    helper = HttpHelper();
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Now location's weather: " + data1!),
            Text("List: " + data2!.toString()),
          ],
        ),
      ),
    );
  }
}
