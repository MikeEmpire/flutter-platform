import 'package:json_annotation/json_annotation.dart';

part 'boxscore_player_stats.g.dart';

@JsonSerializable()
class BoxscorePlayerStats {
  int? assists;
  int? blocks;
  int? blocksReceived;
  int? fieldGoalsMade;
  int? fieldGoalsAttempted;
  double fieldGoalsPercentage;
  int? foulsPersonal;
  int? foulsDrawn;
  int? foulsOffensive;
  int? foulsTechnical;
  int? freeThrowsMade;
  int? freeThrowsAttempted;
  double freeThrowsPercentage;
  int? minus;
  String minutes;
  String minutesCalculated;
  int? plus;
  int? plusMinus;
  int? points;
  int? pointsFastBreak;
  int? pointsInThePaint;
  int? pointsSecondChance;
  int? reboundsDefensive;
  int? reboundsOffensive;
  int? steals;
  int? reboundsTotal;
  int? threePointersMade;
  int? threePointersAttempted;
  double threePointersPercentage;
  int? turnovers;
  int? twoPointersMade;
  int? twoPointersAttempted;
  double twoPointersPercentage;

  BoxscorePlayerStats(
      this.assists,
      this.blocks,
      this.blocksReceived,
      this.fieldGoalsAttempted,
      this.fieldGoalsMade,
      this.fieldGoalsPercentage,
      this.foulsPersonal,
      this.foulsDrawn,
      this.foulsOffensive,
      this.foulsTechnical,
      this.freeThrowsAttempted,
      this.freeThrowsMade,
      this.freeThrowsPercentage,
      this.minus,
      this.minutes,
      this.minutesCalculated,
      this.plus,
      this.plusMinus,
      this.points,
      this.pointsFastBreak,
      this.pointsInThePaint,
      this.pointsSecondChance,
      this.reboundsDefensive,
      this.reboundsOffensive,
      this.reboundsTotal,
      this.steals,
      this.threePointersAttempted,
      this.threePointersMade,
      this.threePointersPercentage,
      this.turnovers,
      this.twoPointersAttempted,
      this.twoPointersMade,
      this.twoPointersPercentage);

  factory BoxscorePlayerStats.fromJson(Map<String, dynamic> data) =>
      _$BoxscorePlayerStatsFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscorePlayerStatsToJson(this);
}
