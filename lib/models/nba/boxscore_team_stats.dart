import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_stats.g.dart';

@JsonSerializable()
class BoxscoreTeamStats {
  int assists;
  double assistsTurnoverRatio;
  int benchPoints;
  int biggestLead;
  int biggestLeadScore;
  int biggestScoringRun;
  int biggestScoringRunScore;
  int blocks;
  int blocksReceived;
  int fastBreakPointsAttempted;
  int fastBreakPointsMade;
  double fastBreakPointsPercentage;
  int fieldGoalsMade;
  double fieldGoalsEffectiveAdjusted;
  int fieldGoalsAttempted;
  double fieldGoalsPercentage;
  int foulsOffensive;
  int foulsPersonal;
  int foulsDrawn;
  int foulsTeam;
  int foulsTechnical;
  int foulsTeamTechnical;
  int freeThrowsAttempted;
  int freeThrowsMade;
  double freeThrowsPercentage;
  int leadChanges;
  String minutes;
  String minutesCalculated;
  int points;
  int pointsAgainst;
  int pointsFastBreak;
  int pointsFromTurnovers;
  int pointsInThePaint;
  int pointsInThePaintMade;
  int pointsInThePaintAttempted;
  double pointsInThePaintPercentage;
  int pointsSecondChance;
  int reboundsDefensive;
  int reboundsPersonal;
  int reboundsOffensive;
  int reboundsTeam;
  int reboundsTeamOffensive;
  int reboundsTeamDefensive;
  int reboundsTeamTotal;
  int secondChancePointsAttempted;
  int secondChancePointsMade;
  double secondChancePointsPercentage;
  int steals;
  int threePointersMade;
  double threePointersPercentage;
  int threePointersAttempted;
  String timeLeading;
  int timesTied;
  int trueShootingAttempts;
  double trueShootingPercentage;
  int turnovers;
  int turnoversTeam;
  int turnoversTotal;
  int twoPointersMade;
  int twoPointersAttempted;
  double twoPointersPercentage;

  BoxscoreTeamStats(
      this.assists,
      this.assistsTurnoverRatio,
      this.benchPoints,
      this.biggestLead,
      this.biggestLeadScore,
      this.biggestScoringRun,
      this.biggestScoringRunScore,
      this.blocks,
      this.blocksReceived,
      this.fastBreakPointsAttempted,
      this.fastBreakPointsMade,
      this.fastBreakPointsPercentage,
      this.fieldGoalsAttempted,
      this.fieldGoalsEffectiveAdjusted,
      this.fieldGoalsMade,
      this.fieldGoalsPercentage,
      this.foulsDrawn,
      this.foulsOffensive,
      this.foulsPersonal,
      this.foulsTeam,
      this.foulsTeamTechnical,
      this.foulsTechnical,
      this.freeThrowsAttempted,
      this.freeThrowsMade,
      this.freeThrowsPercentage,
      this.leadChanges,
      this.minutes,
      this.minutesCalculated,
      this.points,
      this.pointsAgainst,
      this.pointsFastBreak,
      this.pointsFromTurnovers,
      this.pointsInThePaint,
      this.pointsInThePaintAttempted,
      this.pointsInThePaintMade,
      this.pointsInThePaintPercentage,
      this.pointsSecondChance,
      this.reboundsDefensive,
      this.reboundsOffensive,
      this.reboundsPersonal,
      this.reboundsTeam,
      this.reboundsTeamDefensive,
      this.reboundsTeamOffensive,
      this.reboundsTeamTotal,
      this.secondChancePointsAttempted,
      this.secondChancePointsMade,
      this.secondChancePointsPercentage,
      this.steals,
      this.threePointersAttempted,
      this.threePointersMade,
      this.threePointersPercentage,
      this.timeLeading,
      this.timesTied,
      this.trueShootingAttempts,
      this.trueShootingPercentage,
      this.turnovers,
      this.turnoversTeam,
      this.turnoversTotal,
      this.twoPointersAttempted,
      this.twoPointersMade,
      this.twoPointersPercentage);

  factory BoxscoreTeamStats.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamStatsFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamStatsToJson(this);
}
