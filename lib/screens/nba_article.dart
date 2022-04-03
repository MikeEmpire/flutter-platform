import 'package:elite_mobile_app/models/articles/article_body.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:flutter/material.dart';

class NBAArticleScreen extends StatelessWidget {
  const NBAArticleScreen({Key? key, required this.article}) : super(key: key);
  final EliteArticle article;

  @override
  Widget build(BuildContext context) {
    Widget _articleBody(List<ArticleBody> articleBody) {
      return Column(
          children: articleBody.map((body) {
        if (body.dataType == 'paragraph') {
          return Text(body.rawData);
        }
        if (body.dataType == 'figure') {
          return Image.network(body.rawData);
        }
        return Text(body.dataType);
      }).toList());
    }

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
            alignment: const Alignment(0, 0),
            child: Column(children: [
              Hero(
                  tag: 'articleImage',
                  child: Image.network(article.headerImgUrl)),
              Hero(tag: 'articleTitle', child: Text(article.title)),
              Expanded(
                  child: SingleChildScrollView(
                      child: _articleBody(article.flutterBody)))
            ])));
  }
}
