// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_sort_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerSortKey _$PlayerSortKeyFromJson(Map<String, dynamic> json) =>
    PlayerSortKey(
      json['name'] as int,
      json['pos'] as int,
      json['points'] as int,
      json['fgm'] as int,
      json['fga'] as int,
      json['fgp'] as int,
      json['fta'] as int,
      json['ftm'] as int,
      json['ftp'] as int,
      json['tpa'] as int,
      json['tpm'] as int,
      json['tpp'] as int,
      json['assists'] as int,
      json['blocks'] as int,
      json['defReb'] as int,
      json['offReb'] as int,
      json['pFouls'] as int,
      json['plusMinus'] as int,
      json['turnovers'] as int,
      json['totReb'] as int,
    );

Map<String, dynamic> _$PlayerSortKeyToJson(PlayerSortKey instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pos': instance.pos,
      'points': instance.points,
      'fgm': instance.fgm,
      'fga': instance.fga,
      'fgp': instance.fgp,
      'ftm': instance.ftm,
      'fta': instance.fta,
      'ftp': instance.ftp,
      'tpa': instance.tpa,
      'tpm': instance.tpm,
      'tpp': instance.tpp,
      'offReb': instance.offReb,
      'defReb': instance.defReb,
      'totReb': instance.totReb,
      'assists': instance.assists,
      'pFouls': instance.pFouls,
      'blocks': instance.blocks,
      'turnovers': instance.turnovers,
      'plusMinus': instance.plusMinus,
    };
