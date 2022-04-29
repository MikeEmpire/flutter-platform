import 'package:flutter/material.dart';

class NBAGameStatRow extends StatelessWidget {
  const NBAGameStatRow(
      {Key? key,
      required this.homeStat,
      required this.statLabel,
      required this.awayStat})
      : super(key: key);
  final String homeStat;
  final String awayStat;
  final String statLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(homeStat),
          SizedBox(width: 100, child: Center(child: Text(statLabel))),
          Text(awayStat)
        ]);
  }
}
