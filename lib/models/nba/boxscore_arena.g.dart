// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_arena.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreArena _$BoxscoreArenaFromJson(Map<String, dynamic> json) =>
    BoxscoreArena(
      json['arenaId'] as int,
      json['arenaName'] as String,
      json['arenaCity'] as String,
      json['arenaCountry'] as String,
      json['arenaState'] as String,
      json['arenaTimezone'] as String,
    );

Map<String, dynamic> _$BoxscoreArenaToJson(BoxscoreArena instance) =>
    <String, dynamic>{
      'arenaId': instance.arenaId,
      'arenaName': instance.arenaName,
      'arenaCity': instance.arenaCity,
      'arenaCountry': instance.arenaCountry,
      'arenaState': instance.arenaState,
      'arenaTimezone': instance.arenaTimezone,
    };
