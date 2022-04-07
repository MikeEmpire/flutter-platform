// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreTeam _$BoxscoreTeamFromJson(Map<String, dynamic> json) => BoxscoreTeam(
      json['teamCity'] as String,
      json['teamId'] as int,
      json['teamName'] as String,
      json['score'] as int,
      json['inBonus'] as String,
      (json['periods'] as List<dynamic>)
          .map((e) => BoxscorePeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['players'] as List<dynamic>)
          .map((e) => BoxscorePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      BoxscoreTeamStats.fromJson(json['statistics'] as Map<String, dynamic>),
      json['teamTricode'] as String,
      json['timeoutsRemaining'] as int,
    );

Map<String, dynamic> _$BoxscoreTeamToJson(BoxscoreTeam instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
      'teamTricode': instance.teamTricode,
      'score': instance.score,
      'teamCity': instance.teamCity,
      'inBonus': instance.inBonus,
      'timeoutsRemaining': instance.timeoutsRemaining,
      'periods': instance.periods,
      'players': instance.players,
      'statistics': instance.statistics,
    };
