import 'package:elite_mobile_app/models/nba/boxscore_period.dart';
import 'package:elite_mobile_app/models/nba/boxscore_player.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_team_stats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team.g.dart';

@JsonSerializable()
class BoxscoreTeam {
  int teamId;
  String teamName;
  String teamTricode;
  int score;
  String teamCity;
  String inBonus;
  int timeoutsRemaining;
  List<BoxscorePeriod> periods;
  List<BoxscorePlayer> players;
  BoxscoreTeamStats statistics;
  BoxscoreTeam(
      this.teamCity,
      this.teamId,
      this.teamName,
      this.score,
      this.inBonus,
      this.periods,
      this.players,
      this.statistics,
      this.teamTricode,
      this.timeoutsRemaining);

  factory BoxscoreTeam.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamToJson(this);
}
