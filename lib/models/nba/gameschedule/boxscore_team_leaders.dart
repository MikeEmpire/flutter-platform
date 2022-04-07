import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_team_stat_leader.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_leaders.g.dart';

@JsonSerializable()
class BoxscoreTeamLeaders {
  BoxscoreTeamStatLeader points;
  BoxscoreTeamStatLeader assists;
  BoxscoreTeamStatLeader rebounds;

  BoxscoreTeamLeaders(this.points, this.assists, this.rebounds);

  factory BoxscoreTeamLeaders.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamLeadersFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamLeadersToJson(this);
}
