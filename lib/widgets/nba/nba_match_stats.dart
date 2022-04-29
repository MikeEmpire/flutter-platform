import 'package:elite_mobile_app/models/nba/boxscore_advanced_team_stats.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_stat_row.dart';
import 'package:flutter/material.dart';

class NBAMatchStats extends StatelessWidget {
  const NBAMatchStats(
      {Key? key, required this.awayTeamStats, required this.homeTeamStats})
      : super(key: key);
  final BoxscoreAdvancedTeamStats awayTeamStats;
  final BoxscoreAdvancedTeamStats homeTeamStats;
  @override
  Widget build(BuildContext context) {
    String awayFga = awayTeamStats.fieldGoalsAttempted.toString();

    String awayFgm = awayTeamStats.fieldGoalsMade.toString();
    String awayFg = '$awayFgm / $awayFga';
    String homeFga = homeTeamStats.fieldGoalsAttempted.toString();
    String homeFgm = homeTeamStats.fieldGoalsMade.toString();
    String homeFg = '$homeFgm / $homeFga';
    double homeFgPct = homeTeamStats.fieldGoalsPercentage * 100;
    String homeFgPercentage = homeFgPct.toStringAsFixed(0);
    double awayFgPct = awayTeamStats.fieldGoalsPercentage * 100;
    String awayFgPercentage = awayFgPct.toStringAsFixed(0);

    String homeAssists = homeTeamStats.assists.toString();
    String awayAssists = awayTeamStats.assists.toString();

    String homeBlocks = homeTeamStats.blocks.toString();
    String awayBlocks = awayTeamStats.blocks.toString();

    String homeSteals = homeTeamStats.steals.toString();
    String awaySteals = awayTeamStats.steals.toString();

    String homeRebounds = homeTeamStats.reboundsPersonal.toString();
    String awayRebounds = awayTeamStats.reboundsPersonal.toString();
    String homeOffReb = homeTeamStats.reboundsOffensive.toString();
    String awayOffReb = awayTeamStats.reboundsOffensive.toString();
    String homeDefReb = homeTeamStats.reboundsDefensive.toString();
    String awayDefReb = awayTeamStats.reboundsDefensive.toString();

    String homeThreePointersMade = homeTeamStats.threePointersMade.toString();
    String awayThreePointersMade = awayTeamStats.threePointersMade.toString();
    String homeThreePointersTotal =
        homeTeamStats.threePointersAttempted.toString();
    String awayThreePointersTotal =
        awayTeamStats.threePointersAttempted.toString();

    String awayThreePointers =
        '$awayThreePointersMade / $awayThreePointersTotal';
    String homeThreePointers =
        '$homeThreePointersMade / $homeThreePointersTotal';
    double awayThreePct = awayTeamStats.threePointersPercentage * 100;
    String awayThreePercentage = awayThreePct.toStringAsFixed(0);
    double homeThreePct = homeTeamStats.threePointersPercentage * 100;
    String homeThreePercentage = homeThreePct.toStringAsFixed(0);
    String homeFT =
        '${homeTeamStats.freeThrowsMade} / ${homeTeamStats.freeThrowsAttempted}';
    String awayFT =
        '${awayTeamStats.freeThrowsMade} / ${awayTeamStats.freeThrowsAttempted}';
    String homeFTPct =
        (homeTeamStats.freeThrowsPercentage * 100).toStringAsFixed(2);
    String awayFTPct =
        (awayTeamStats.freeThrowsPercentage * 100).toStringAsFixed(2);
    return Column(
      children: [
        const Text("Match Details"),
        NBAGameStatRow(
          homeStat: homeFg,
          awayStat: awayFg,
          statLabel: "Field Goals",
        ),
        NBAGameStatRow(
          homeStat: homeFgPercentage,
          awayStat: awayFgPercentage,
          statLabel: "Field Goal Pct",
        ),
        NBAGameStatRow(
            awayStat: awayThreePointers,
            homeStat: homeThreePointers,
            statLabel: "Three Pointers"),
        NBAGameStatRow(
          awayStat: awayThreePercentage + "%",
          homeStat: homeThreePercentage + "%",
          statLabel: "3P %",
        ),
        NBAGameStatRow(
          awayStat: awayFT,
          homeStat: homeFT,
          statLabel: "Free Throws",
        ),
        NBAGameStatRow(
          awayStat: awayFTPct,
          homeStat: homeFTPct,
          statLabel: "Free Throw Pct",
        ),
        NBAGameStatRow(
          awayStat: awayOffReb,
          homeStat: homeOffReb,
          statLabel: "Off Rebounds",
        ),
        NBAGameStatRow(
          awayStat: awayDefReb,
          homeStat: homeDefReb,
          statLabel: "Def Rebounds",
        ),
        NBAGameStatRow(
          awayStat: awayRebounds,
          homeStat: homeRebounds,
          statLabel: "Total Rebounds",
        ),
        NBAGameStatRow(
          awayStat: awayAssists,
          homeStat: homeAssists,
          statLabel: "Assists",
        ),
        NBAGameStatRow(
          awayStat: awayBlocks,
          homeStat: homeBlocks,
          statLabel: "Blocks",
        ),
        NBAGameStatRow(
          awayStat: awaySteals,
          homeStat: homeSteals,
          statLabel: "Steals",
        ),
      ],
    );
  }
}
