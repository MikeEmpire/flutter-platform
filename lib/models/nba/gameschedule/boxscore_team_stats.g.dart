// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_team_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreTeamStats _$BoxscoreTeamStatsFromJson(Map<String, dynamic> json) =>
    BoxscoreTeamStats(
      json['fastBreakPoints'] as String?,
      json['pointsInPaint'] as String?,
      json['longestRun'] as String?,
      json['biggestLead'],
      json['pointsOffTurnovers'] as String?,
      json['leaders'] == null
          ? null
          : BoxscoreTeamLeaders.fromJson(
              json['leaders'] as Map<String, dynamic>),
      json['totals'] == null
          ? null
          : BoxscoreTeamTotals.fromJson(json['totals'] as Map<String, dynamic>),
      json['secondChancePoints'] as String?,
    );

Map<String, dynamic> _$BoxscoreTeamStatsToJson(BoxscoreTeamStats instance) =>
    <String, dynamic>{
      'fastBreakPoints': instance.fastBreakPoints,
      'pointsInPaint': instance.pointsInPaint,
      'longestRun': instance.longestRun,
      'biggestLead': instance.biggestLead,
      'secondChancePoints': instance.secondChancePoints,
      'pointsOffTurnovers': instance.pointsOffTurnovers,
      'totals': instance.totals,
      'leaders': instance.leaders,
    };
