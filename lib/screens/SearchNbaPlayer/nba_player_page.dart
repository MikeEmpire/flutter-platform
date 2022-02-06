// ignore_for_file: unnecessary_const

import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/services/http_service.dart';
import 'package:flutter/material.dart';

class NBAPlayerPage extends StatefulWidget {
  const NBAPlayerPage({Key? key}) : super(key: key);
  @override
  _NBAPlayerPage createState() => _NBAPlayerPage();
}

class _NBAPlayerPage extends State<NBAPlayerPage> {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Text('Search Nba Player'),
      const TextField(
        decoration: const InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Enter a NBA player',
        ),
      ),
      FutureBuilder(
          future: httpService.getPlayers(),
          builder:
              (BuildContext context, AsyncSnapshot<List<PlayerInfo>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            List<PlayerInfo> players = snapshot.data as List<PlayerInfo>;
            // ignore: todo
            // TODO: FILTER BY INPUT VALUE
            return ListView.builder(
                itemCount: players.length > 10 ? 10 : players.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(players[index].temporaryDisplayName)]);
                });
          })
    ]);
  }
}
