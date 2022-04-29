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
                height: 500,
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      int playerPoints =
                          players[index].statistics?.points as int;
                      String pPoints = playerPoints.toString();
                      int rawFGA =
                          players[index].statistics?.fieldGoalsAttempted as int;
                      int rawFGM =
                          players[index].statistics?.fieldGoalsMade as int;
                      int rawFGP = players[index]
                          .statistics
                          ?.fieldGoalsPercentage as int;
                      int rawTPA = players[index]
                          .statistics
                          ?.threePointersAttempted as int;
                      int rawTPM =
                          players[index].statistics?.threePointersMade as int;
                      int rawTPP = players[index]
                          .statistics
                          ?.threePointersPercentage as int;
                      int rawFTA =
                          players[index].statistics?.freeThrowsAttempted as int;
                      int rawFTM =
                          players[index].statistics?.freeThrowsMade as int;
                      int rawFTP = players[index]
                          .statistics
                          ?.freeThrowsPercentage as int;
                      String fga = rawFGA.toString();

                      return SizedBox(
                          width: 500,
                          child: Row(children: [
                            SizedBox(
                                width: 100,
                                child: Text(players[index].nameI.toString())),
                            SizedBox(width: 30, child: Text(pPoints))
                          ]));
                    })))
      ],
    );
  }
}
