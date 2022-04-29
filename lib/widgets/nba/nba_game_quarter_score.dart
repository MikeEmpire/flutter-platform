import 'package:elite_mobile_app/models/nba/boxscore_info.dart';
import 'package:elite_mobile_app/widgets/nba/nba_team_period_line.dart';
import 'package:flutter/material.dart';

class NBAGameQuarterScore extends StatelessWidget {
  const NBAGameQuarterScore(
      {Key? key,
      required this.gameInfo,
      required this.homeTeamImage,
      required this.awayTeamImage})
      : super(key: key);
  final BoxscoreInfo gameInfo;
  final String homeTeamImage;
  final String awayTeamImage;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 60;
    return Column(
      children: [
        NBATeamPeriodLine(
            score: gameInfo.homeTeam.score,
            periods: gameInfo.homeTeam.periods,
            image: homeTeamImage),
        Row(children: [
          Container(width: 60),
          SizedBox(
              height: 10,
              width: width - 60,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        width: width / 5,
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
            score: gameInfo.awayTeam.score,
            image: awayTeamImage)
      ],
    );
  }
}
