import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_stat_leader.g.dart';

@JsonSerializable()
class BoxscoreTeamStatLeader {
  String value;
  List<BoxscoreTeamStatLeader> players;

  BoxscoreTeamStatLeader(this.value, this.players);

  factory BoxscoreTeamStatLeader.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamStatLeaderFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamStatLeaderToJson(this);
}
