import 'package:elite_mobile_app/models/nba/boxscore_period.dart';
import 'package:flutter/widgets.dart';

class NBATeamPeriodLine extends StatelessWidget {
  const NBATeamPeriodLine(
      {Key? key, required this.periods, required this.image})
      : super(key: key);
  final List<BoxscorePeriod> periods;
  final String image;
  @override
  Widget build(BuildContext context) {
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
            width: width,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      width: width / 4,
                      child: Center(
                          child: Text(
                        periods[index].score.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                        textAlign: TextAlign.center,
                      )));
                }))
      ],
    ));
  }
}
