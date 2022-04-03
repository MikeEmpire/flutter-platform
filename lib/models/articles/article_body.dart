import 'package:json_annotation/json_annotation.dart';

part 'article_body.g.dart';

@JsonSerializable()
class ArticleBody {
  String dataType;
  String rawData;

  ArticleBody(this.dataType, this.rawData);

  factory ArticleBody.fromJson(Map<String, dynamic> data) =>
      _$ArticleBodyFromJson(data);
  Map<String, dynamic> toJson() => _$ArticleBodyToJson(this);
}
