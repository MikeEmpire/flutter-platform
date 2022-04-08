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
    String name = teamLeader?.name ?? "";
    String position = teamLeader?.position ?? "";
    String jerseyNum = teamLeader?.jerseyNum ?? "";
    TextStyle jerseyStyle = const TextStyle(
        fontSize: 10, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic);
    TextStyle positionStyle =
        const TextStyle(fontSize: 11, fontWeight: FontWeight.w400);
    TextStyle playerNameStyle =
        const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
    Widget gameLeader() {
      Widget widget;
      switch (isAway) {
        case (true):
          widget = Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: Column(children: [
                  Text('Points: ' + teamLeaderPoints),
                  Text(' Assists: ' + teamLeaderAssists),
                  Text(' Rebs: ' + teamLeaderRebounds)
                ]),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(children: [
                        Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                        Row(
                          children: [
                            Text(name, style: playerNameStyle),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                                child: Text(
                                  position,
                                  style: positionStyle,
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Text(jerseyNum, style: jerseyStyle),
                            ),
                          ],
                        )
                      ])))
            ],
          );
          break;
        default:
          widget = Row(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(children: [
                        Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Text(jerseyNum, style: jerseyStyle),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                                child: Text(position, style: positionStyle)),
                            Text(name, style: playerNameStyle),
                          ],
                        )
                      ]))),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(children: [
                  Text('Points: ' + teamLeaderPoints),
                  Text(' Assists: ' + teamLeaderAssists),
                  Text(' Rebs: ' + teamLeaderRebounds)
                ]),
              )
            ],
          );
      }
      return widget;
    }

    return Expanded(
        flex: 4,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.network(_teamImg,
                  fit: BoxFit.cover, height: 60, width: 60)),
          Text('$wins - ' + losses,
              style: Theme.of(context).textTheme.bodyText1),
          Container(
            height: 10,
          ),
          gameLeader(),
        ]));
  }
}
