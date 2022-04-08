import 'package:elite_mobile_app/models/nba/boxscore_player_stats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_player.g.dart';

@JsonSerializable()
class BoxscorePlayer {
  int? order;
  String? jerseyNum;
  String? status;
  int? personId;
  String? starter;
  String? position;
  String? oncourt;
  String? played;
  String? name;
  String? nameI;
  String? familyName;
  String? firstName;
  BoxscorePlayerStats? statistics;

  BoxscorePlayer(
      this.order,
      this.jerseyNum,
      this.starter,
      this.statistics,
      this.status,
      this.familyName,
      this.firstName,
      this.name,
      this.nameI,
      this.oncourt,
      this.personId,
      this.played,
      this.position);

  factory BoxscorePlayer.fromJson(Map<String, dynamic> data) =>
      _$BoxscorePlayerFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscorePlayerToJson(this);
}
