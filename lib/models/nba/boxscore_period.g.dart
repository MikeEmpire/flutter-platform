// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscorePeriod _$BoxscorePeriodFromJson(Map<String, dynamic> json) =>
    BoxscorePeriod(
      json['period'] as int,
      json['periodType'] as String,
      json['score'] as int,
    );

Map<String, dynamic> _$BoxscorePeriodToJson(BoxscorePeriod instance) =>
    <String, dynamic>{
      'period': instance.period,
      'periodType': instance.periodType,
      'score': instance.score,
    };
