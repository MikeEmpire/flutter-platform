import 'package:json_annotation/json_annotation.dart';

part 'player_sort_key.g.dart';

@JsonSerializable()
class PlayerSortKey {
  int name;
  int pos;
  int points;
  int fgm;
  int fga;
  int fgp;
  int ftm;
  int fta;
  int ftp;
  int tpa;
  int tpm;
  int tpp;
  int offReb;
  int defReb;
  int totReb;
  int assists;
  int pFouls;
  int blocks;
  int turnovers;
  int plusMinus;

  PlayerSortKey(
      this.name,
      this.pos,
      this.points,
      this.fgm,
      this.fga,
      this.fgp,
      this.fta,
      this.ftm,
      this.ftp,
      this.tpa,
      this.tpm,
      this.tpp,
      this.assists,
      this.blocks,
      this.defReb,
      this.offReb,
      this.pFouls,
      this.plusMinus,
      this.turnovers,
      this.totReb);

  factory PlayerSortKey.fromJson(Map<String, dynamic> data) =>
      _$PlayerSortKeyFromJson(data);

  Map<String, dynamic> toJson() => _$PlayerSortKeyToJson(this);
}
