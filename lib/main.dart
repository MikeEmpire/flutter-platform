import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'counter.dart'; // Import the counter

final counter = Counter(); // Instantiate the store

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elite Mobile App',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.amber,
          fontFamily: "NeueHaas"),
      home: EliteHomePage(),
    );
  }
}

class EliteHomePage extends StatelessWidget {
  final String title;
  EliteHomePage({this.title = 'Home'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: const IconButton(
            icon: Image(
                image: AssetImage("assets/elite-logo-text.png"),
                width: 400,
                height: 300,
                fit: BoxFit.contain),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          actions: const <Widget>[],
        ),
        body: const Center(
            child: Text("Search For Player by name",
                style: TextStyle(fontFamily: "NeueHaas"))));
  }
}
