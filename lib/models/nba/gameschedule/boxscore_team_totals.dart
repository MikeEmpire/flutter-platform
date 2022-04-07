// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'boxscore_team_totals.g.dart';

@JsonSerializable()
class BoxscoreTeamTotals {
  String points;
  String fgm;
  String fga;
  String fgp;
  String ftm;
  String fta;
  String ftp;
  String tpm;
  String tpa;
  String tpp;
  String offReb;
  String totReb;
  String defReb;
  String assists;
  String pFouls;
  String steals;
  String turnovers;
  String blocks;
  String plusMinus;
  String min;
  String short_timeout_remaining;
  String full_timeout_remaining;
  String team_fouls;

  BoxscoreTeamTotals(
      this.points,
      this.fgm,
      this.fga,
      this.fgp,
      this.ftm,
      this.fta,
      this.ftp,
      this.tpm,
      this.tpa,
      this.tpp,
      this.offReb,
      this.defReb,
      this.totReb,
      this.assists,
      this.pFouls,
      this.steals,
      this.turnovers,
      this.blocks,
      this.plusMinus,
      this.min,
      this.full_timeout_remaining,
      this.short_timeout_remaining,
      this.team_fouls);

  factory BoxscoreTeamTotals.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreTeamTotalsFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreTeamTotalsToJson(this);
}
