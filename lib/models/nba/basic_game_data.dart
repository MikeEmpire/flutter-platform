import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/boxscore_stats.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/previous_matchup.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_game_data.g.dart';

@JsonSerializable()
class BasicGameData {
  GameInfo basicGameData;
  PreviousMatchup previousMatchup;
  BoxscoreStats stats;

  BasicGameData(this.basicGameData, this.previousMatchup, this.stats);

  factory BasicGameData.fromJson(Map<String, dynamic> data) =>
      _$BasicGameDataFromJson(data);

  Map<String, dynamic> toJson() => _$BasicGameDataToJson(this);
}
