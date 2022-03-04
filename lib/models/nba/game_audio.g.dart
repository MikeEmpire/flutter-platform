// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameAudio _$GameAudioFromJson(Map<String, dynamic> json) => GameAudio(
      (json['national'] as List<dynamic>)
          .map((e) => GameAudioInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['vTeam'] as List<dynamic>)
          .map((e) => GameAudioInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['hTeam'] as List<dynamic>)
          .map((e) => GameAudioInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameAudioToJson(GameAudio instance) => <String, dynamic>{
      'national': instance.national,
      'vTeam': instance.vTeam,
      'hTeam': instance.hTeam,
    };
