// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elite_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EliteArticle _$EliteArticleFromJson(Map<String, dynamic> json) => EliteArticle(
      json['body'] as String,
      (json['flutterBody'] as List<dynamic>)
          .map((e) => ArticleBody.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['authorData'] == null
          ? null
          : EliteAuthor.fromJson(json['authorData'] as Map<String, dynamic>),
      json['category'] as String?,
      json['title'] as String,
      json['subtitle'] as String,
      json['subCategory'] as String?,
      json['headerImgUrl'] as String,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$EliteArticleToJson(EliteArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'headerImgUrl': instance.headerImgUrl,
      'body': instance.body,
      'authorData': instance.authorData,
      'flutterBody': instance.flutterBody,
      'tags': instance.tags,
      'category': instance.category,
      'subCategory': instance.subCategory,
    };
