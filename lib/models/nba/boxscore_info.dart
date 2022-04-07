import 'package:elite_mobile_app/models/nba/boxscore_arena.dart';
import 'package:elite_mobile_app/models/nba/boxscore_official.dart';
import 'package:elite_mobile_app/models/nba/boxscore_team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'boxscore_info.g.dart';

@JsonSerializable()
class BoxscoreInfo {
  String gameId;
  String gameTimeUTC;
  String gameTimeAway;
  String gameTimeHome;
  String gameEt;
  int duration;
  String gameCode;
  String gameStatusText;
  int gameStatus;
  int regulationPeriods;
  int period;
  String gameClock;
  int attendance;
  String sellout;
  BoxscoreArena arena;
  List<BoxscoreOfficial> officials;
  BoxscoreTeam homeTeam;
  BoxscoreTeam awayTeam;
  BoxscoreInfo(
      this.gameId,
      this.gameTimeUTC,
      this.gameTimeAway,
      this.gameTimeHome,
      this.arena,
      this.attendance,
      this.awayTeam,
      this.duration,
      this.gameClock,
      this.gameCode,
      this.gameEt,
      this.gameStatus,
      this.gameStatusText,
      this.homeTeam,
      this.officials,
      this.period,
      this.regulationPeriods,
      this.sellout);

  factory BoxscoreInfo.fromJson(Map<String, dynamic> data) =>
      _$BoxscoreInfoFromJson(data);

  Map<String, dynamic> toJson() => _$BoxscoreInfoToJson(this);
}
