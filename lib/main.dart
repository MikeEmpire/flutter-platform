import 'package:elite_mobile_app/screens/SearchNbaPlayer/nba_player_page.dart';
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
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: "NeueHaas"),
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
        bottomNavigationBar: Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 9, 0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.2,
                                  offset: Offset(1.0, 1.0),
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
                            ],
                            color: Color.fromRGBO(223, 231, 253, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const SizedBox(
                              height: 40,
                              width: 130,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("SPORTS",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromRGBO(134, 148, 188, 1))),
                              ))),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.2,
                                  offset: Offset(1.0, 1.0),
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const SizedBox(
                              height: 40,
                              width: 130,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Music",
                                  textAlign: TextAlign.end,
                                ),
                              ))),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.2,
                                  offset: Offset(1.0, 1.0),
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const SizedBox(
                              height: 40,
                              width: 130,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Culture",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              )))
                    ]))));
  }
}
