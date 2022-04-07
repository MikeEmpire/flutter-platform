// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_boxscore_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameBoxscoreRes _$GameBoxscoreResFromJson(Map<String, dynamic> json) =>
    GameBoxscoreRes(
      BasicGameData.fromJson(json['basicData'] as Map<String, dynamic>),
      BoxscoreInfo.fromJson(json['gameInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameBoxscoreResToJson(GameBoxscoreRes instance) =>
    <String, dynamic>{
      'basicData': instance.basicData,
      'gameInfo': instance.gameInfo,
    };
