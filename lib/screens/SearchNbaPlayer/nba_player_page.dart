import 'package:elite_mobile_app/services/player_service.dart';
import 'package:elite_mobile_app/widgets/nba_player_form.dart';
import 'package:flutter/material.dart';

class NBAPlayerPage extends StatefulWidget {
  const NBAPlayerPage({Key? key}) : super(key: key);
  @override
  _NBAPlayerPageState createState() => _NBAPlayerPageState();
}

class _NBAPlayerPageState extends State<NBAPlayerPage> {
  final PlayerService playerService = PlayerService();
  @override
  Widget build(BuildContext context) {
    final _playersFuture = playerService.getPlayers();
    return Container(
        alignment: const Alignment(0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
            ]));
  }
}
