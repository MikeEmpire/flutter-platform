import 'package:elite_mobile_app/screens/SearchNbaPlayer/nba_player_page.dart';
import 'package:elite_mobile_app/widgets/navigation/main_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elite Mobile App',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: "NeueHaas",
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          )),
      home: const EliteHomePage(),
    );
  }
}

class EliteHomePage extends StatelessWidget {
  final String title;
  const EliteHomePage({Key? key, this.title = 'Home'}) : super(key: key);
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
        body: Container(
            alignment: const Alignment(0, 0), child: const NBAPlayerPage()),
        bottomNavigationBar: MainNav());
  }
}
