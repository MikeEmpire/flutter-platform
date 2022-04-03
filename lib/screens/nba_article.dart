import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:flutter/material.dart';

class NBAArticleScreen extends StatelessWidget {
  const NBAArticleScreen({Key? key, required this.article}) : super(key: key);
  final EliteArticle article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image.asset("assets/elite-logo-text.png",
                width: 400,
                height: 300,
                cacheHeight: 50,
                cacheWidth: 120,
                fit: BoxFit.contain),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          actions: const <Widget>[],
        ),
        body: Container(
            alignment: const Alignment(0, 0),
            child: Column(children: [
              Hero(
                  tag: 'articleImage',
                  child: Image.network(article.headerImgUrl)),
            ])));
  }
}
