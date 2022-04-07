// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_team_leaders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreTeamLeaders _$BoxscoreTeamLeadersFromJson(Map<String, dynamic> json) =>
    BoxscoreTeamLeaders(
      BoxscoreTeamStatLeader.fromJson(json['points'] as Map<String, dynamic>),
      BoxscoreTeamStatLeader.fromJson(json['assists'] as Map<String, dynamic>),
      BoxscoreTeamStatLeader.fromJson(json['rebounds'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoxscoreTeamLeadersToJson(
        BoxscoreTeamLeaders instance) =>
    <String, dynamic>{
      'points': instance.points,
      'assists': instance.assists,
      'rebounds': instance.rebounds,
    };
