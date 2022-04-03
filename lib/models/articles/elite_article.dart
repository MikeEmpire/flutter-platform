import 'package:elite_mobile_app/models/articles/article_body.dart';
import 'package:elite_mobile_app/models/articles/elite_author.dart';
import 'package:json_annotation/json_annotation.dart';

part 'elite_article.g.dart';

@JsonSerializable()
class EliteArticle {
  String title;
  String subtitle;
  String headerImgUrl;
  String body;
  EliteAuthor? authorData;
  List<ArticleBody> flutterBody;
  List<String>? tags;
  String? category;
  String? subCategory;

  EliteArticle(
      this.body,
      this.flutterBody,
      this.authorData,
      this.category,
      this.title,
      this.subtitle,
      this.subCategory,
      this.headerImgUrl,
      this.tags);

  factory EliteArticle.fromJson(Map<String, dynamic> data) =>
      _$EliteArticleFromJson(data);
  Map<String, dynamic> toJson() => _$EliteArticleToJson(this);
}
