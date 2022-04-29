import 'package:elite_mobile_app/models/nba/boxscore_advanced_team_stats.dart';
import 'package:elite_mobile_app/models/nba/boxscore_info.dart';
import 'package:elite_mobile_app/models/nba/boxscore_player.dart';
import 'package:elite_mobile_app/models/nba/game_boxscore_res.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_quarter_score.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_team_info.dart';
import 'package:elite_mobile_app/widgets/nba/nba_match_stats.dart';
import 'package:elite_mobile_app/widgets/nba/nba_team_boxscore.dart';
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
    bool hideLeaders = false;
    String gameStatusText = gameData.gameStatusText.toString();
    String scoreDisplay = '${gameData.homeTeam?.score.toString()} -'
        ' ${gameData.awayTeam?.score.toString()}';
    gameDate = gameDate.split("/")[0];
    gameDate = gameDate.trim();
    final Future _gameBoxscoreFuture =
        gameService.getBoxscore(gameId, gameDate);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(gameStatusText),
        ),
        body: SingleChildScrollView(
            child: Container(
                alignment: const Alignment(0, 0),
                child: Column(children: [
                  Row(children: [
                    NBAGameTeamInfo(
                        hideLeaders: hideLeaders,
                        teamData: gameData.homeTeam,
                        teamLeader: gameData.gameLeaders?.homeLeaders,
                        isAway: false),
                    Hero(
                        tag: 'gameScore' + gameId,
                        child: Text(scoreDisplay,
                            style: Theme.of(context).textTheme.headline5)),
                    NBAGameTeamInfo(
                        hideLeaders: hideLeaders,
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
                        if (snapshot.connectionState ==
                                ConnectionState.waiting ||
                            !snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        GameBoxscoreRes boxscore =
                            snapshot.data as GameBoxscoreRes;
                        BoxscoreInfo gameInfo = boxscore.gameInfo;
                        List<BoxscorePlayer> homeTeamPlayers =
                            gameInfo.homeTeam.players;
                        List<BoxscorePlayer> awayTeamPlayers =
                            gameInfo.awayTeam.players;
                        BoxscoreAdvancedTeamStats awayTeamStats =
                            gameInfo.awayTeam.statistics;
                        BoxscoreAdvancedTeamStats homeTeamStats =
                            gameInfo.homeTeam.statistics;
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
                            NBAGameQuarterScore(
                                gameInfo: gameInfo,
                                homeTeamImage: homeTeamImage,
                                awayTeamImage: awayTeamImage),
                            NBAMatchStats(
                                awayTeamStats: awayTeamStats,
                                homeTeamStats: homeTeamStats),
                            NBATeamBoxscore(players: homeTeamPlayers),
                            NBATeamBoxscore(players: awayTeamPlayers)
                          ],
                        );
                      })
                ]))));
  }
}
