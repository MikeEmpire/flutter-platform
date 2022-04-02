// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elite_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EliteAuthor _$EliteAuthorFromJson(Map<String, dynamic> json) => EliteAuthor(
      json['username'] as String,
      json['displayName'] as String,
      json['email'] as String,
      json['twitter_url'] as String,
    );

Map<String, dynamic> _$EliteAuthorToJson(EliteAuthor instance) =>
    <String, dynamic>{
      'username': instance.username,
      'displayName': instance.displayName,
      'email': instance.email,
      'twitter_url': instance.twitter_url,
    };
