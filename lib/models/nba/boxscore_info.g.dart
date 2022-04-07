// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreInfo _$BoxscoreInfoFromJson(Map<String, dynamic> json) => BoxscoreInfo(
      json['gameId'] as String,
      json['gameTimeUTC'] as String,
      json['gameTimeAway'] as String,
      json['gameTimeHome'] as String,
      BoxscoreArena.fromJson(json['arena'] as Map<String, dynamic>),
      json['attendance'] as int,
      BoxscoreTeam.fromJson(json['awayTeam'] as Map<String, dynamic>),
      json['duration'] as int,
      json['gameClock'] as String,
      json['gameCode'] as String,
      json['gameEt'] as String,
      json['gameStatus'] as int,
      json['gameStatusText'] as String,
      BoxscoreTeam.fromJson(json['homeTeam'] as Map<String, dynamic>),
      (json['officials'] as List<dynamic>)
          .map((e) => BoxscoreOfficial.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['period'] as int,
      json['regulationPeriods'] as int,
      json['sellout'] as String,
    );

Map<String, dynamic> _$BoxscoreInfoToJson(BoxscoreInfo instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gameTimeUTC': instance.gameTimeUTC,
      'gameTimeAway': instance.gameTimeAway,
      'gameTimeHome': instance.gameTimeHome,
      'gameEt': instance.gameEt,
      'duration': instance.duration,
      'gameCode': instance.gameCode,
      'gameStatusText': instance.gameStatusText,
      'gameStatus': instance.gameStatus,
      'regulationPeriods': instance.regulationPeriods,
      'period': instance.period,
      'gameClock': instance.gameClock,
      'attendance': instance.attendance,
      'sellout': instance.sellout,
      'arena': instance.arena,
      'officials': instance.officials,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
    };
