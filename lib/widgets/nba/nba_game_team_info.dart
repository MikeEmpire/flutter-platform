import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_leader.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_team.dart';
import 'package:flutter/material.dart';

class NBAGameTeamInfo extends StatelessWidget {
  const NBAGameTeamInfo(
      {Key? key,
      required this.teamData,
      required this.teamLeader,
      required this.isAway})
      : super(key: key);
  final V2GameLeader? teamLeader;
  final V2GameTeam? teamData;
  final bool isAway;
  @override
  Widget build(BuildContext context) {
    String _getPlayerImg(String nickname) =>
        'https://b.fssta.com/uploads/application/nba/team-logos/' +
        nickname +
        '.vresize.72.72.medium.0.png';
    String _teamImg = _getPlayerImg(
        teamData?.teamName?.replaceAll(RegExp(r"\s+"), "") as String);
    String? wins = teamData?.wins.toString();
    String losses = teamData?.losses.toString() as String;
    String _baseImgUrl =
        'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/';
    String imageUrl = '$_baseImgUrl/${teamLeader?.personId}.png';
    String teamLeaderPoints = teamLeader?.points.toString() ?? "";
    String teamLeaderRebounds = teamLeader?.rebounds.toString() ?? "";
    String teamLeaderAssists = teamLeader?.assists.toString() ?? "";
    Widget gameLeader() {
      Widget widget;
      switch (isAway) {
        case (true):
          widget = Row(
            children: [
              Column(children: [
                Text('Points: ' + teamLeaderPoints),
                Text('Assists: ' + teamLeaderAssists),
                Text('Rebounds: ' + teamLeaderRebounds)
              ]),
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              )
            ],
          );
          break;
        default:
          widget = Row(
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
              Column(children: [
                Text('Points: ' + teamLeaderPoints),
                Text('Assists: ' + teamLeaderAssists),
                Text('Rebounds: ' + teamLeaderRebounds)
              ])
            ],
          );
      }
      return widget;
    }

    return Expanded(
        flex: 3,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.network(_teamImg,
                  fit: BoxFit.cover, height: 60, width: 60)),
          Text('$wins - ' + losses,
              style: Theme.of(context).textTheme.bodyText1),
          gameLeader(),
        ]));
  }
}
