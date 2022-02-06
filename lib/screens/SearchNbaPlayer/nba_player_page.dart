import 'package:flutter/material.dart';

import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/services/http_service.dart';

class NBAPlayerPage extends StatefulWidget {
  const NBAPlayerPage({Key? key}) : super(key: key);
  @override
  _NBAPlayerPageState createState() => _NBAPlayerPageState();
}

class _NBAPlayerPageState extends State<NBAPlayerPage> {
  final HttpService httpService = HttpService();
  final searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Text('Search Nba Player'),
      TextField(
          controller: searchController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a NBA player',
          ),
          onChanged: (text) {
            print(searchController.text);
          }),
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
            // TODO: FILTER PLAYERS BY CONTROLLER VALUE
            return Expanded(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: players.length > 10 ? 10 : players.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(title: Text(players[index].firstName));
                      }),
                )
              ],
            ));
          })
    ]);
  }
}
