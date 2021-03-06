import 'package:cached_network_image/cached_network_image.dart';
import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:elite_mobile_app/screens/nba_article.dart';
import 'package:flutter/material.dart';

class NBAArticle extends StatefulWidget {
  const NBAArticle({
    Key? key,
    required this.article,
    required this.height,
  }) : super(key: key);
  final EliteArticle article;
  final double height;
  @override
  _NBAArticleState createState() => _NBAArticleState();
}

class _NBAArticleState extends State<NBAArticle>
    with SingleTickerProviderStateMixin {
  double _height = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _height = widget.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final _authorName = widget.article.authorData?.displayName as String;
    final _articleText = widget.article.title + '\n \n' + _authorName;
    return Stack(children: [
      Hero(
          tag: 'articleImage',
          child: Container(
              height: widget.height,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          widget.article.headerImgUrl))))),
      Container(
        height: widget.height,
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
                  1.6
                ])),
      ),
      AnimatedContainer(
        height: _height,
        width: 400,
        curve: Curves.easeOutExpo,
        margin: const EdgeInsets.fromLTRB(15, 7, 3, 0),
        decoration: const BoxDecoration(color: Colors.transparent),
        duration: const Duration(seconds: 3),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NBAArticleScreen(
                      article: widget.article,
                    ),
                  ));
            },
            child: Text(_articleText,
                style: Theme.of(context).textTheme.headline2)),
      )
    ]);
  }
}
