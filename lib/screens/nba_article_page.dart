import 'package:carousel_slider/carousel_slider.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:elite_mobile_app/services/article_service.dart';
import 'package:flutter/material.dart';

class NBAArticlePage extends StatefulWidget {
  const NBAArticlePage({Key? key}) : super(key: key);
  @override
  _NBAArticlePageState createState() => _NBAArticlePageState();
}

class _NBAArticlePageState extends State<NBAArticlePage> {
  final ArticleService articleService = ArticleService();
  @override
  Widget build(BuildContext context) {
    Future<List<EliteArticle>> _eliteArticleFuture =
        articleService.getArticles();
    return Column(children: <Widget>[
      FutureBuilder(
          future: _eliteArticleFuture,
          builder: (BuildContext context,
              AsyncSnapshot<List<EliteArticle>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            List<EliteArticle> _eliteArticles =
                snapshot.data as List<EliteArticle>;

            final double height = MediaQuery.of(context).size.height - 253;

            return CarouselSlider.builder(
              itemCount: _eliteArticles.length,
              itemBuilder:
                  (BuildContext context, int articleIndex, int pageIndex) {
                return Center(
                    child: Image.network(
                        _eliteArticles[articleIndex].headerImgUrl,
                        fit: BoxFit.cover,
                        height: height));
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0,
                height: height,
                enlargeCenterPage: false,
                autoPlayInterval: const Duration(seconds: 8),
                scrollDirection: Axis.horizontal,
              ),
            );
          })
    ]);
  }
}
