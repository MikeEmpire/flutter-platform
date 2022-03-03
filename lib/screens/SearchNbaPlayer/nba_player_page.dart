import 'package:elite_mobile_app/services/player_service.dart';
import 'package:elite_mobile_app/widgets/nba_player_form.dart';
import 'package:flutter/material.dart';

class NBAPlayerPage extends StatefulWidget {
  const NBAPlayerPage({Key? key}) : super(key: key);
  @override
  _NBAPlayerPageState createState() => _NBAPlayerPageState();
}

class _NBAPlayerPageState extends State<NBAPlayerPage> {
  String pageToShow = "Search";
  final PlayerService playerService = PlayerService();
  @override
  Widget build(BuildContext context) {
    final _playersFuture = playerService.getPlayers();
    return Container(
        alignment: const Alignment(0, 0),
        child: Stack(children: <Widget>[
          Column(children: [
            Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Text('Search Players By Name',
                      style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 24))),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  alignment: const Alignment(0, 0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: NBAPlayerForm(playersFuture: _playersFuture),
                ))
          ]),
          Positioned(
            left: 4.0,
            bottom: 24.0,
            child: Container(
                width: 30,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(190, 225, 230, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: null,
                              icon: Icon(Icons.poll, color: Colors.white))),
                      Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: null,
                              icon: Icon(Icons.calendar_today,
                                  color: Colors.white))),
                      Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: null,
                              icon: Icon(Icons.article_outlined,
                                  color: Colors.white)))
                    ])),
          ),
        ]));
  }
}
