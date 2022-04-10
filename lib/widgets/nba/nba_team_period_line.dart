import 'package:elite_mobile_app/models/nba/boxscore_period.dart';
import 'package:flutter/widgets.dart';

class NBATeamPeriodLine extends StatelessWidget {
  const NBATeamPeriodLine(
      {Key? key,
      required this.periods,
      required this.score,
      required this.image})
      : super(key: key);
  final List<BoxscorePeriod> periods;
  final String image;
  final int score;
  @override
  Widget build(BuildContext context) {
    final String formattedScore = score.toString();
    double width = MediaQuery.of(context).size.width - 60;
    return (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            child:
                Image.network(image, fit: BoxFit.cover, height: 49, width: 49)),
        SizedBox(
            height: 50,
            width: width - 50,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      width: width / 5,
                      child: Center(
                          child: Text(
                        periods[index].score.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                        textAlign: TextAlign.center,
                      )));
                })),
        SizedBox(width: 50, child: Center(child: Text(formattedScore))),
      ],
    ));
  }
}
