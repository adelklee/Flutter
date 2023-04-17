import 'package:flutter/material.dart';
import 'package:flutter_application_8/http_helper.dart';
import 'dart:async';

void main() => runApp(const MyMovies());

class MyMovies extends StatelessWidget {
  const MyMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Movies',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Home(),
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
  List<String>? data2;

  Future init() async {
    data1 = await helper!.getUpcoming();
    data2 = await helper!.getUpcomingList();
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
      body: Column(
        children: [
          Text(data1!),
          SizedBox(
            height: 400,
            child: ListView(
              children: data2!.map((e) {
                return Text(e);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
