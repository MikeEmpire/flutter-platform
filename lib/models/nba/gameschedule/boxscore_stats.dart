import 'package:elite_mobile_app/models/nba/active_player.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_team_stats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_stats.g.dart';

@JsonSerializable()
class BoxscoreStats {
  String timesTied;
  String leadChanges;
  BoxscoreTeamStats hTeam;
  BoxscoreTeamStats vTeam;
  List<ActivePlayer> activePlayers;

  BoxscoreStats(this.timesTied, this.leadChanges, this.hTeam, this.vTeam,
      this.activePlayers);

  factory BoxscoreStats.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreStatsFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreStatsToJson(this);
}
