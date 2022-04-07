// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_game_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicGameData _$BasicGameDataFromJson(Map<String, dynamic> json) =>
    BasicGameData(
      GameInfo.fromJson(json['basicGameData'] as Map<String, dynamic>),
      PreviousMatchup.fromJson(json['previousMatchup'] as Map<String, dynamic>),
      BoxscoreStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BasicGameDataToJson(BasicGameData instance) =>
    <String, dynamic>{
      'basicGameData': instance.basicGameData,
      'previousMatchup': instance.previousMatchup,
      'stats': instance.stats,
    };
