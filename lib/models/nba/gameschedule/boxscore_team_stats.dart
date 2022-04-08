import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_team_leaders.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_team_totals.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_stats.g.dart';

@JsonSerializable()
class BoxscoreTeamStats {
  String? fastBreakPoints;
  String? pointsInPaint;
  String? longestRun;
  dynamic biggestLead;
  String? secondChancePoints;
  String? pointsOffTurnovers;
  BoxscoreTeamTotals? totals;
  BoxscoreTeamLeaders? leaders;

  BoxscoreTeamStats(
      this.fastBreakPoints,
      this.pointsInPaint,
      this.longestRun,
      this.biggestLead,
      this.pointsOffTurnovers,
      this.leaders,
      this.totals,
      this.secondChancePoints);

  factory BoxscoreTeamStats.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamStatsFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamStatsToJson(this);
}
