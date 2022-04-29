import 'package:flutter/cupertino.dart';
import 'package:elite_mobile_app/models/nba/boxscore_player.dart';

class NBATeamBoxscore extends StatelessWidget {
  const NBATeamBoxscore({Key? key, required this.players}) : super(key: key);
  final List<BoxscorePlayer> players;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Home Box Score"),
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      int rawFGA =
                          players[index].statistics?.fieldGoalsAttempted as int;
                      int rawFGM =
                          players[index].statistics?.fieldGoalsMade as int;
                      double rwFGP = players[index]
                          .statistics
                          ?.fieldGoalsPercentage as double;
                      double rawFGP = rwFGP * 100;
                      int rawTPA = players[index]
                          .statistics
                          ?.threePointersAttempted as int;
                      int rawTPM =
                          players[index].statistics?.threePointersMade as int;
                      double rwTPP = players[index]
                          .statistics
                          ?.threePointersPercentage as double;
                      double rawTPP = rwTPP * 100;
                      int rawFTA =
                          players[index].statistics?.freeThrowsAttempted as int;
                      int rawFTM =
                          players[index].statistics?.freeThrowsMade as int;
                      double rwFTP = players[index]
                          .statistics
                          ?.freeThrowsPercentage as double;
                      double rawFTP = rwFTP * 100;
                      int rawOReb =
                          players[index].statistics?.reboundsOffensive as int;
                      int rawDReb =
                          players[index].statistics?.reboundsDefensive as int;
                      int rawTReb =
                          players[index].statistics?.reboundsTotal as int;
                      int rawAssists =
                          players[index].statistics?.assists as int;
                      int rawSteals = players[index].statistics?.steals as int;
                      int rawBlocks = players[index].statistics?.blocks as int;
                      int rawTurnovers =
                          players[index].statistics?.turnovers as int;
                      int rawPFouls =
                          players[index].statistics?.foulsPersonal as int;
                      int rawPlus = players[index].statistics?.plus as int;
                      int rawMinus = players[index].statistics?.minus as int;
                      int rawPoints = players[index].statistics?.points as int;
                      int rawPlusMinus = rawPlus + rawMinus;
                      String plusMinus = rawPlusMinus.toString();
                      String pts = rawPoints.toString();
                      String fgm = rawFGM.toString();
                      String fga = rawFGA.toString();
                      String fgp = rawFGP.toString().substring(0, 2);
                      String fta = rawFTA.toString();
                      String ftm = rawFTM.toString();
                      String ftpStr = rawFTP.toString();
                      String ftp = ftpStr.substring(0, 2);
                      String tpa = rawTPA.toString();
                      String tpm = rawTPM.toString();
                      String tp = rawTPP.toString();
                      String tpp = tp.substring(0, 2);
                      String oreb = rawOReb.toString();
                      String dreb = rawDReb.toString();
                      String treb = rawTReb.toString();
                      String asts = rawAssists.toString();
                      String stls = rawSteals.toString();
                      String blks = rawBlocks.toString();
                      String tos = rawTurnovers.toString();
                      String fls = rawPFouls.toString();
                      return SizedBox(
                          width: 750,
                          child: Row(children: [
                            SizedBox(
                                width: 70,
                                child: Text(players[index].nameI.toString())),
                            SizedBox(width: 20, child: Text(fgm)),
                            SizedBox(width: 20, child: Text(fga)),
                            SizedBox(width: 20, child: Text(fgp)),
                            SizedBox(width: 20, child: Text(tpm)),
                            SizedBox(width: 20, child: Text(tpa)),
                            SizedBox(width: 20, child: Text(tpp)),
                            SizedBox(width: 20, child: Text(ftm)),
                            SizedBox(width: 20, child: Text(fta)),
                            SizedBox(width: 20, child: Text(ftp)),
                            SizedBox(width: 20, child: Text(oreb)),
                            SizedBox(width: 20, child: Text(dreb)),
                            SizedBox(width: 20, child: Text(treb)),
                            SizedBox(width: 20, child: Text(asts)),
                            SizedBox(width: 20, child: Text(stls)),
                            SizedBox(width: 20, child: Text(blks)),
                            SizedBox(width: 20, child: Text(pts)),
                          ]));
                    })))
      ],
    );
  }
}
