import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:flutter/material.dart';

class NBAGameStatus extends StatelessWidget {
  const NBAGameStatus(
      {Key? key, required this.gameStatus, required this.gameData})
      : super(key: key);
  final String? gameStatus;
  final GameInfo? gameData;
  Widget contentToShow() {
    Widget widget;
    String seriesText = '';
    String seriesLoss = gameData?.hTeam?.seriesLoss as String;
    String seriesWin = gameData?.hTeam?.seriesWin as String;
    String nickname = gameData?.hTeam?.additionalInfo?.nickname as String;
    String startTimeEastern = gameData?.startTimeEastern as String;
    String hTeamScore = gameData?.hTeam?.score as String;
    String vTeamScore = gameData?.vTeam?.score as String;
    if (int.parse(seriesLoss) > int.parse(seriesWin)) {
      seriesText = 'Series is $seriesLoss-$seriesWin $nickname';
    } else {
      seriesText = 'Series is $seriesWin-$seriesLoss $nickname';
    }
    switch (gameStatus) {
      case ("done"):
        widget = Column(
          children: [
            Text('$hTeamScore-$vTeamScore'),
            const Text("Final"),
            Text(seriesText)
          ],
        );
        break;
      default:
        widget = Column(
          children: [Text('Starts at $startTimeEastern'), Text(seriesText)],
        );
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 3, child: contentToShow());
  }
}
