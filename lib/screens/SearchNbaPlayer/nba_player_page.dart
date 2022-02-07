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
  String searchString = "";
  @override
  Widget build(BuildContext context) {
    final _playersFuture = httpService.getPlayers();
    return Container(
        padding: const EdgeInsets.all(5),
        alignment: const Alignment(0, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
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
                child: Column(children: <Widget>[
                  TextField(
                    onChanged: (text) {
                      setState(() {
                        searchString = text.toLowerCase();
                      });
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a NBA player',
                        prefixIcon: Icon(Icons.person)),
                  ),
                  FutureBuilder(
                      future: _playersFuture,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<PlayerInfo>> snapshot) {
                        if (snapshot.connectionState ==
                                ConnectionState.waiting ||
                            !snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        List<PlayerInfo> players =
                            snapshot.data as List<PlayerInfo>;
                        List<PlayerInfo> results = [];
                        if (searchString.isEmpty) {
                          results = players;
                        } else {
                          results = players
                              .where((player) =>
                                  player.firstName
                                      .toLowerCase()
                                      .contains(searchString.toLowerCase()) ||
                                  player.lastName
                                      .toLowerCase()
                                      .contains(searchString.toLowerCase()) ||
                                  '${player.firstName} ${player.lastName}'
                                      .toLowerCase()
                                      .contains(searchString.toLowerCase()))
                              .toList();
                        }
                        return SizedBox(
                            height: 200,
                            child: ListView.builder(
                                itemCount:
                                    results.length > 10 ? 10 : results.length,
                                itemBuilder: (BuildContext context, int index) {
                                  String displayName =
                                      '${results[index].firstName} ${results[index].lastName}';
                                  return ListTile(title: Text(displayName));
                                }));
                      })
                ]),
              ))
        ]));
  }
}
