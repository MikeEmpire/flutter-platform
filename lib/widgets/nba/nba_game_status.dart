import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:flutter/material.dart';

class NBAGameStatus extends StatelessWidget {
  const NBAGameStatus(
      {Key? key, required this.gameStatus, required this.gameData})
      : super(key: key);
  final String? gameStatus;
  final GameInfo? gameData;

  @override
  Widget build(BuildContext context) {
    Widget contentToShow() {
      Widget widget;
      String seriesText = '';
      String seriesLoss = gameData?.hTeam?.seriesLoss as String;
      String seriesWin = gameData?.hTeam?.seriesWin as String;
      String nickname = gameData?.hTeam?.additionalInfo?.nickname as String;
      String startTimeEastern = gameData?.startTimeEastern as String;
      String hTeamScore = gameData?.hTeam?.score as String;
      String vTeamScore = gameData?.vTeam?.score as String;
      String currentPeriodStr = gameData?.period?.current.toString() as String;
      switch (currentPeriodStr) {
        case ("1"):
          currentPeriodStr = currentPeriodStr + 'st';
          break;
        case ("2"):
          currentPeriodStr = currentPeriodStr + 'nd';
          break;
        case ("3"):
          currentPeriodStr = currentPeriodStr + 'rd';
          break;
        default:
          currentPeriodStr = currentPeriodStr + 'th';
      }
      String clock = gameData?.clock as String;
      if (int.parse(seriesLoss) > int.parse(seriesWin)) {
        seriesText = 'Series is $seriesLoss-$seriesWin $nickname';
      } else {
        seriesText = 'Series is $seriesWin-$seriesLoss $nickname';
      }
      switch (gameStatus) {
        case ("inProgress"):
          widget = Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('$hTeamScore - $vTeamScore',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text('$clock $currentPeriodStr Qtr',
                    style: Theme.of(context).textTheme.bodyText1))
          ]);
          break;
        case ("done"):
          widget = Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('$hTeamScore-$vTeamScore',
                      style: Theme.of(context).textTheme.headline5)),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Final",
                      style: Theme.of(context).textTheme.bodyText1)),
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

    return Expanded(flex: 3, child: contentToShow());
  }
}
