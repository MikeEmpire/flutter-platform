import 'package:carousel_slider/carousel_slider.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:elite_mobile_app/services/article_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_article.dart';
import 'package:flutter/material.dart';

class NBAArticlePage extends StatefulWidget {
  const NBAArticlePage({Key? key}) : super(key: key);
  @override
  _NBAArticlePageState createState() => _NBAArticlePageState();
}

class _NBAArticlePageState extends State<NBAArticlePage>
    with SingleTickerProviderStateMixin {
  final ArticleService articleService = ArticleService();
  late Animation<double> animation;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    Future<List<EliteArticle>> _eliteArticleFuture =
        articleService.getArticles();
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder(
            future: _eliteArticleFuture,
            builder: (BuildContext context,
                AsyncSnapshot<List<EliteArticle>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  !snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              List<EliteArticle> _eliteArticles =
                  snapshot.data as List<EliteArticle>;
              final double height = MediaQuery.of(context).size.height - 292;
              return CarouselSlider.builder(
                itemCount: _eliteArticles.length,
                itemBuilder:
                    (BuildContext context, int articleIndex, int pageIndex) {
                  return Center(
                      child: NBAArticle(
                          article: _eliteArticles[articleIndex],
                          height: height));
                },
                options: CarouselOptions(
                  height: height,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: const Duration(seconds: 8),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1300),
                  viewportFraction: 1,
                ),
              );
            }));
  }
}
