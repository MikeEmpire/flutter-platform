import 'package:elite_mobile_app/models/nba/boxscore_info.dart';
import 'package:elite_mobile_app/models/nba/game_boxscore_res.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_team_info.dart';
import 'package:elite_mobile_app/widgets/nba/nba_team_period_line.dart';
import 'package:flutter/material.dart';

class NBAActiveBoxscorePage extends StatelessWidget {
  const NBAActiveBoxscorePage(
      {Key? key, required this.gameData, required this.gameStatus})
      : super(key: key);
  final V2GameSchedule gameData;
  final String gameStatus;

  @override
  Widget build(BuildContext context) {
    final GameService gameService = GameService();
    String getTeamImage(String teamName) =>
        'https://b.fssta.com/uploads/application/nba/team-logos/' +
        teamName +
        '.vresize.72.72.medium.0.png';
    String formatTeamName(String t) => t.replaceAll(RegExp(r"\s+"), "");
    String homeTeamName = formatTeamName(gameData.homeTeam?.teamName as String);
    String awayTeamName = formatTeamName(gameData.awayTeam?.teamName as String);
    String homeTeamImage = getTeamImage(homeTeamName);
    String awayTeamImage = getTeamImage(awayTeamName);
    String gameDate = gameData.gameCode as String;
    String gameId = gameData.gameId as String;
    bool showLeaders = false;
    String gameStatusText = gameData.gameStatusText.toString();
    String scoreDisplay = '${gameData.homeTeam?.score.toString()} -'
        ' ${gameData.awayTeam?.score.toString()}';
    gameDate = gameDate.split("/")[0];
    gameDate = gameDate.trim();
    double width = MediaQuery.of(context).size.width - 60;
    final Future _gameBoxscoreFuture =
        gameService.getBoxscore(gameId, gameDate);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(gameStatusText),
        ),
        body: Container(
            alignment: const Alignment(0, 0),
            child: Column(children: [
              Row(children: [
                NBAGameTeamInfo(
                    showLeaders: showLeaders,
                    teamData: gameData.homeTeam,
                    teamLeader: gameData.gameLeaders?.homeLeaders,
                    isAway: false),
                Hero(
                    tag: 'gameScore' + gameId,
                    child: Text(scoreDisplay,
                        style: Theme.of(context).textTheme.headline5)),
                NBAGameTeamInfo(
                    showLeaders: showLeaders,
                    teamLeader: gameData.gameLeaders?.awayLeaders,
                    teamData: gameData.awayTeam,
                    isAway: true)
              ]),
              FutureBuilder(
                  future: _gameBoxscoreFuture,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<dynamic> snapshot,
                  ) {
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        !snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    double width = MediaQuery.of(context).size.width - 60;

                    GameBoxscoreRes boxscore = snapshot.data as GameBoxscoreRes;
                    BoxscoreInfo gameInfo = boxscore.gameInfo;
                    return Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                                child: Text('Box Score',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)))),
                        Column(
                          children: [
                            NBATeamPeriodLine(
                                periods: gameInfo.homeTeam.periods,
                                image: homeTeamImage),
                            Row(children: [
                              Container(width: 60),
                              SizedBox(
                                  height: 10,
                                  width: width,
                                  child: ListView.builder(
                                      itemCount: 4,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                            width: width / 4,
                                            child: Center(
                                                child: Text(
                                              'Q${index + 1}',
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w300),
                                              textAlign: TextAlign.center,
                                            )));
                                      }))
                            ]),
                            NBATeamPeriodLine(
                                periods: gameInfo.awayTeam.periods,
                                image: awayTeamImage)
                          ],
                        )
                      ],
                    );
                  })
            ])));
  }
}
