// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreStats _$BoxscoreStatsFromJson(Map<String, dynamic> json) =>
    BoxscoreStats(
      json['timesTied'] as String,
      json['leadChanges'] as String,
      BoxscoreTeamStats.fromJson(json['hTeam'] as Map<String, dynamic>),
      BoxscoreTeamStats.fromJson(json['vTeam'] as Map<String, dynamic>),
      (json['activePlayers'] as List<dynamic>)
          .map((e) => ActivePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxscoreStatsToJson(BoxscoreStats instance) =>
    <String, dynamic>{
      'timesTied': instance.timesTied,
      'leadChanges': instance.leadChanges,
      'hTeam': instance.hTeam,
      'vTeam': instance.vTeam,
      'activePlayers': instance.activePlayers,
    };
