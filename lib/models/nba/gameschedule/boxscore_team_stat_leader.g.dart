// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_team_stat_leader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreTeamStatLeader _$BoxscoreTeamStatLeaderFromJson(
        Map<String, dynamic> json) =>
    BoxscoreTeamStatLeader(
      json['value'] as String,
      (json['players'] as List<dynamic>)
          .map(
              (e) => BoxscoreTeamStatLeader.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxscoreTeamStatLeaderToJson(
        BoxscoreTeamStatLeader instance) =>
    <String, dynamic>{
      'value': instance.value,
      'players': instance.players,
    };
