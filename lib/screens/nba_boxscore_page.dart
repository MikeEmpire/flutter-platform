import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NBABoxscorePage extends StatelessWidget {
  const NBABoxscorePage(
      {Key? key, required this.gameData, required this.gameStatus})
      : super(key: key);
  final V2GameSchedule gameData;
  final String gameStatus;

  @override
  Widget build(BuildContext context) {
    final GameService gameService = GameService();
    String gameDate = gameData.gameCode as String;
    String gameId = gameData.gameId as String;
    gameDate = gameDate.split("/")[0];
    gameDate = gameDate.trim();
    final Future _gameBoxscoreFuture =
        gameService.getBoxscore(gameId, gameDate);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
            alignment: const Alignment(0, 0), child: Column(children: [])));
  }
}
