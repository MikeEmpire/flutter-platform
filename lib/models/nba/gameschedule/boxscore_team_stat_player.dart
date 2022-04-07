import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_stat_player.g.dart';

@JsonSerializable()
class BoxscoreTeamStatPlayer {
  String personId;
  String firstName;
  String lastName;

  BoxscoreTeamStatPlayer(this.personId, this.firstName, this.lastName);

  factory BoxscoreTeamStatPlayer.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamStatPlayerFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamStatPlayerToJson(this);
}
