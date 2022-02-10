import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/services/player_service.dart';
import 'package:flutter/material.dart';

class NBAPlayerForm extends StatefulWidget {
  const NBAPlayerForm({Key? key, required this.playersFuture})
      : super(key: key);
  final Future<List<PlayerInfo>> playersFuture;
  @override
  _NBAPlayerFormState createState() => _NBAPlayerFormState();
}

class _NBAPlayerFormState extends State<NBAPlayerForm> {
  String searchString = "";
  bool showGamelog = false;
  PlayerInfo? selectedPlayer;
  PlayerLatestStats? latestStats;
  final PlayerService playerService = PlayerService();
  @override
  Widget build(BuildContext context) {
    var playerToShow = selectedPlayer;
    if (playerToShow != null) {
      String _playerFutureName =
          '${selectedPlayer?.firstName}${selectedPlayer?.lastName}'
              .replaceAll(RegExp(r"\s+"), "");
      final _playersFuture = playerService.getPlayersStats(_playerFutureName);

      String _baseImgUrl =
          'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/';
      String _imageUrl = '$_baseImgUrl/${selectedPlayer?.personId}.png';
      String playerDisplayName = selectedPlayer != null
          ? '${selectedPlayer?.firstName} ${selectedPlayer?.lastName}'
          : "";
      // TODO: REFACTOR INTO PLAYER RESULT.DART
      return Column(children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Expanded(
                  flex: 0,
                  child: IconButton(
                    icon: const Icon(Icons.cancel_rounded),
                    onPressed: () {
                      setState(() {
                        selectedPlayer = null;
                      });
                    },
                  )),
              Expanded(
                  flex: 0,
                  child: Image.network(_imageUrl,
                      fit: BoxFit.cover, height: 60, width: 60)),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(playerDisplayName,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey.shade700)))),
              const Expanded(flex: 0, child: Text("2021"))
            ]),
        FutureBuilder(
            future: _playersFuture,
            builder: (BuildContext context,
                AsyncSnapshot<PlayerLatestStats> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  !snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              PlayerLatestStats stats = snapshot.data as PlayerLatestStats;
              String? _ppg = stats.ppg ?? "";
              String? _rpg = stats.rpg ?? "";
              String? _apg = stats.apg ?? "";
              String? _fgp = stats.fgp != null ? '${stats.fgp} %' : "";
              String? _ftp = stats.ftp != null ? '${stats.ftp} %' : "";
              String? _gamesPlayed = stats.gamesPlayed ?? "";
              EdgeInsets columnPadding =
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0);
              EdgeInsets textPadding =
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 0);
              return Container(
                  height: 150,
                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                        padding: columnPadding,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: textPadding,
                                  child: const Text("Games Played",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.5)))),
                              Text(_gamesPlayed,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))
                            ])),
                    Padding(
                        padding: columnPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: textPadding,
                                child: const Text("Pts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color.fromRGBO(0, 0, 0, 0.5)))),
                            Text(_ppg,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)))
                          ],
                        )),
                    Padding(
                        padding: columnPadding,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: textPadding,
                                  child: const Text("Reb",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.5)))),
                              Text(_rpg,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))
                            ])),
                    Padding(
                        padding: columnPadding,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: textPadding,
                                  child: const Text("Ast",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.5)))),
                              Text(_apg,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))
                            ])),
                    Padding(
                        padding: columnPadding,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: textPadding,
                                  child: const Text("FG %",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.5)))),
                              Text(_fgp,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))
                            ])),
                    Padding(
                        padding: columnPadding,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: textPadding,
                                  child: const Text("FT %",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.5)))),
                              Text(_ftp,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))
                            ]))
                  ]));
            })
      ]);
    }
    return Column(children: <Widget>[
      Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 1.2,
                  offset: Offset(1.0, 1.0),
                  color: Color.fromRGBO(0, 0, 0, 0.3)),
            ],
          ),
          child: TextField(
            onChanged: (text) {
              setState(() {
                searchString = text.toLowerCase();
              });
            },
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey.shade700,
            ),
            decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Enter a NBA player name',
                prefixIcon: Icon(Icons.person)),
          )),
      FutureBuilder(
          future: widget.playersFuture,
          builder:
              (BuildContext context, AsyncSnapshot<List<PlayerInfo>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            List<PlayerInfo> players = snapshot.data as List<PlayerInfo>;
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
                    itemCount: results.length > 10 ? 10 : results.length,
                    itemBuilder: (BuildContext context, int index) {
                      String displayName =
                          '${results[index].firstName} ${results[index].lastName}';
                      return Card(
                          child: ListTile(
                              onTap: () {
                                setState(() {
                                  selectedPlayer = results[index];
                                });
                              },
                              title: Text(displayName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))));
                    }));
          })
    ]);
  }
}
