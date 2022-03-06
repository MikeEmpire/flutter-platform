// ignore_for_file: non_constant_identifier_names

import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_status.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_team_info.dart';
import 'package:flutter/material.dart';

class NBASchedulePage extends StatefulWidget {
  const NBASchedulePage({Key? key}) : super(key: key);
  @override
  _NBASchedulePageState createState() => _NBASchedulePageState();
}

class _NBASchedulePageState extends State<NBASchedulePage> {
  final GameService gameService = GameService();
  String YYYY_MM_DD = DateTime.now().toIso8601String().split('T').first;
  @override
  Widget build(BuildContext context) {
    final String formatted = YYYY_MM_DD + 'T03:24:00';
    final Future<List<GameInfo>> _gameScheduleFuture =
        gameService.getGames(formatted);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 0,
              child: Text("Games Today",
                  style: Theme.of(context).textTheme.headline1)),
          Expanded(
              flex: 3,
              child: FutureBuilder(
                  future: _gameScheduleFuture,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<GameInfo>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    List<GameInfo> _gameSchedule =
                        snapshot.data as List<GameInfo>;
                    return SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: _gameSchedule.length,
                            itemBuilder: (BuildContext context, int index) {
                              bool? isRecapAvail =
                                  _gameSchedule[index].isRecapArticleAvail;
                              bool? isGameActivated =
                                  _gameSchedule[index].isGameActivated;
                              int? currentPeriod =
                                  _gameSchedule[index].period?.current;
                              String status = '';
                              if (isGameActivated == false &&
                                  currentPeriod == 0) {
                                status = 'haventStarted';
                              }
                              if (isGameActivated == true ||
                                  currentPeriod! > 0 && currentPeriod < 4) {
                                status = 'inProgress';
                              }
                              if (isRecapAvail == true && currentPeriod == 4) {
                                status = 'done';
                              }
                              return Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 2,
                                              color:
                                                  Colors.blueGrey.shade100))),
                                  child: Row(children: [
                                    NBAGameTeamInfo(
                                        teamData: _gameSchedule[index].hTeam,
                                        isAway: false),
                                    NBAGameStatus(
                                        gameStatus: status,
                                        gameData: _gameSchedule[index]),
                                    NBAGameTeamInfo(
                                        teamData: _gameSchedule[index].vTeam,
                                        isAway: true)
                                  ]));
                            }));
                  }))
        ]);
  }
}
