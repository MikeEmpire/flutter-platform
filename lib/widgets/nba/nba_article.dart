import 'package:elite_mobile_app/models/articles/elite_article.dart';
import 'package:elite_mobile_app/widgets/animations/animated_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NBAArticle extends StatefulWidget {
  const NBAArticle({Key? key, required this.article, required this.height})
      : super(key: key);
  final EliteArticle article;
  final double height;
  @override
  _NBAArticleState createState() => _NBAArticleState();
}

class _NBAArticleState extends State<NBAArticle>
    with SingleTickerProviderStateMixin {
  late final controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeInOut,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Stack(children: [
      Container(
          height: widget.height,
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.article.headerImgUrl)))),
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
      Container(
          height: widget.height,
          width: 400,
          margin: const EdgeInsets.fromLTRB(15, 7, 3, 0),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: FadeTransition(
              opacity: animation,
              child: Text(widget.article.title,
                  style: Theme.of(context).textTheme.headline2)))
    ]);
  }
}
