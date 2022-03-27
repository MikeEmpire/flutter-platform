import 'package:carousel_slider/carousel_slider.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:elite_mobile_app/services/article_service.dart';
import 'package:elite_mobile_app/widgets/animations/animated_text.dart';
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
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    Future<List<EliteArticle>> _eliteArticleFuture =
        articleService.getArticles();
    return Column(children: <Widget>[
      Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Expanded(
              flex: 0,
              child: Text("Articles",
                  style: Theme.of(context).textTheme.headline1))),
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

            final double height = MediaQuery.of(context).size.height - 292;

            return CarouselSlider.builder(
              itemCount: _eliteArticles.length,
              itemBuilder:
                  (BuildContext context, int articleIndex, int pageIndex) {
                return Center(
                    child: NBAArticle(
                        article: _eliteArticles[articleIndex], height: height));
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
