// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxscore_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxscorePlayer _$BoxscorePlayerFromJson(Map<String, dynamic> json) =>
    BoxscorePlayer(
      json['order'] as int?,
      json['jerseyNum'] as String?,
      json['starter'] as String?,
      json['statistics'] == null
          ? null
          : BoxscorePlayerStats.fromJson(
              json['statistics'] as Map<String, dynamic>),
      json['status'] as String?,
      json['familyName'] as String?,
      json['firstName'] as String?,
      json['name'] as String?,
      json['nameI'] as String?,
      json['oncourt'] as String?,
      json['personId'] as int?,
      json['played'] as String?,
      json['position'] as String?,
    );

Map<String, dynamic> _$BoxscorePlayerToJson(BoxscorePlayer instance) =>
    <String, dynamic>{
      'order': instance.order,
      'jerseyNum': instance.jerseyNum,
      'status': instance.status,
      'personId': instance.personId,
      'starter': instance.starter,
      'position': instance.position,
      'oncourt': instance.oncourt,
      'played': instance.played,
      'name': instance.name,
      'nameI': instance.nameI,
      'familyName': instance.familyName,
      'firstName': instance.firstName,
      'statistics': instance.statistics,
    };
