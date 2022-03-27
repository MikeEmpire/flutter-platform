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
                    child: Stack(children: [
                  Container(
                      height: height,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  _eliteArticles[articleIndex].headerImgUrl)))),
                  Container(
                    height: height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.2),
                              Colors.white,
                            ],
                            stops: const [
                              0.0,
                              1.3
                            ])),
                  ),
                  Container(
                    height: height,
                    width: 400,
                    margin: const EdgeInsets.fromLTRB(15, 7, 3, 0),
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Text(
                      _eliteArticles[articleIndex].title,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ]));
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
