// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_official.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscoreOfficial _$BoxscoreOfficialFromJson(Map<String, dynamic> json) =>
    BoxscoreOfficial(
      json['personId'] as int,
      json['name'] as String,
      json['nameI'] as String,
      json['jerseyNum'] as String,
      json['familyName'] as String,
      json['assignment'] as String,
      json['firstName'] as String,
    );

Map<String, dynamic> _$BoxscoreOfficialToJson(BoxscoreOfficial instance) =>
    <String, dynamic>{
      'personId': instance.personId,
      'name': instance.name,
      'nameI': instance.nameI,
      'jerseyNum': instance.jerseyNum,
      'firstName': instance.firstName,
      'familyName': instance.familyName,
      'assignment': instance.assignment,
    };
