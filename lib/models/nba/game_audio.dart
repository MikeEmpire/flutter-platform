import 'package:json_annotation/json_annotation.dart';
import 'package:elite_mobile_app/models/nba/game_audio_info.dart';

part 'game_audio.g.dart';

@JsonSerializable()
class GameAudio {
  List<GameAudioInfo> national;
  List<GameAudioInfo> vTeam;
  List<GameAudioInfo> hTeam;

  GameAudio(this.national, this.vTeam, this.hTeam);

  factory GameAudio.fromJson(Map<String, dynamic> data) =>
      _$GameAudioFromJson(data);

  Map<String, dynamic> toJson() => _$GameAudioToJson(this);
}
