// ignore_for_file: non_constant_identifier_names

import 'package:elite_mobile_app/models/nba/player_sort_key.dart';
import 'package:json_annotation/json_annotation.dart';

part 'active_player.g.dart';

@JsonSerializable()
class ActivePlayer {
  String personId;
  String firstName;
  String lastName;
  String jersey;
  String teamId;
  bool isOnCourt;
  String points;
  String pos;
  String position_full;
  String player_code;
  String min;
  String fga;
  String fgm;
  String fgp;
  String fta;
  String ftm;
  String ftp;
  String tpa;
  String tpp;
  String tpm;
  String offReb;
  String defReb;
  String totReb;
  String assists;
  String pFouls;
  String steals;
  String turnovers;
  String blocks;
  String plusMinus;
  String dnp;
  PlayerSortKey sortKey;

  ActivePlayer(
      this.points,
      this.pos,
      this.position_full,
      this.player_code,
      this.min,
      this.fga,
      this.fgm,
      this.fgp,
      this.fta,
      this.ftm,
      this.ftp,
      this.offReb,
      this.defReb,
      this.totReb,
      this.assists,
      this.blocks,
      this.isOnCourt,
      this.tpp,
      this.tpa,
      this.tpm,
      this.turnovers,
      this.teamId,
      this.dnp,
      this.firstName,
      this.lastName,
      this.jersey,
      this.pFouls,
      this.personId,
      this.plusMinus,
      this.sortKey,
      this.steals);

  factory ActivePlayer.fromJson(Map<String, dynamic> data) =>
      _$ActivePlayerFromJson(data);

  Map<String, dynamic> toJson() => _$ActivePlayerToJson(this);
}
