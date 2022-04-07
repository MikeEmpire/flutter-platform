import 'package:json_annotation/json_annotation.dart';

part 'boxscore_arena.g.dart';

@JsonSerializable()
class BoxscoreArena {
  int arenaId;
  String arenaName;
  String arenaCity;
  String arenaCountry;
  String arenaState;
  String arenaTimezone;

  BoxscoreArena(this.arenaId, this.arenaName, this.arenaCity, this.arenaCountry,
      this.arenaState, this.arenaTimezone);

  factory BoxscoreArena.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreArenaFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreArenaToJson(this);
}
