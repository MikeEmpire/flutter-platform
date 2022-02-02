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
      ),
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
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      color: Colors.green.shade300,
                      child: Text("Item 1")),
                  Container(
                      margin: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      color: Colors.green.shade200,
                      child: Text("Item 2")),
                  Container(
                      margin: EdgeInsets.all(8),
                      height: 200,
                      width: 200,
                      color: Colors.green.shade800,
                      child: Text("Item 3"))
                ]))));
  }
}
