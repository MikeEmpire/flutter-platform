import 'package:elite_mobile_app/models/nba/basic_game_data.dart';
import 'package:elite_mobile_app/models/nba/boxscore_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_boxscore_res.g.dart';

@JsonSerializable()
class GameBoxscoreRes {
  BasicGameData basicData;
  BoxscoreInfo gameInfo;
  GameBoxscoreRes(this.basicData, this.gameInfo);

  factory GameBoxscoreRes.fromJson(Map<String, dynamic> data) =>
      _$GameBoxscoreResFromJson(data);

  Map<String, dynamic> toJson() => _$GameBoxscoreResToJson(this);
}
